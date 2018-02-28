# encoding: utf-8
'''
________________________________________________________________
チューツールス SER Export

Author: Chew Zishen
Written on: 2018 / 02 / 01

SER の出力自動化ツール。

SER exporter is to automate the tedious export process and create fullproof mistake-less export system


________________________________________________________________
'''
from maya import OpenMayaUI as omui 
import pymel.core as pm
import maya.cmds as cmds
import maya.mel as mel
import os
import sys
sys.path.append('//p.sv/Prism/project/SER/user/chew/SERTools')#adding new directory for tools to import
import PySide2 #importing modules for the UI
import PySide2.QtWidgets as QtWidgets
import PySide2.QtGui as QtGui
import PySide2.QtCore
from PySide2 import QtUiTools
import ExporterUI_001 #this is the UI file
reload(ExporterUI_001)
from ExporterUI_001 import Ui_MainWindow




def main():
    dialog = MainWindow()
    dialog.show()
    
    return dialog


class MainWindow(QtWidgets.QDialog, Ui_MainWindow):

    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)
        self.setupUi(self)
        
        
        self.fileName = cmds.file(q = True, sceneName = True, shortName = True).rstrip('.mb')
        self.currentAddress = cmds.file(q = True, location = True).rstrip(self.fileName)
        
        #declaring output paths
        self.boneFBX = 'D:/SER/SVN/Unity/motion/fbx_yard/Assets/Models_Characters'
        self.polyFBX = '//p.sv/Prism/project/SER/check/motion'
        self.maFiles = 'D:/SER/SVN/MAYA/motion/maya'
        
        #loading character names and weapon index
        fileIndex = open('//p.sv/Prism/project/SER/user/chew/ref/charaIndex.ref', 'rb')
        indexDump = fileIndex.read().decode("UTF-8")
        self.charaNameIndex = {}
        self.charaWeaponIndex = {}
        for i in indexDump.split('\n'):#assigning character names to index
            self.charaNameIndex[i[:3]] = i.split('_')[1].rstrip('\r')
            
        for i in indexDump.split('\n'):#assigning weapon to index
            self.charaWeaponIndex[i[:3]] = i.split('_')[2].rstrip('\r')
        fileIndex.close()
        
        #loading weapon names and index
        fileIndex = open('//p.sv/Prism/project/SER/user/chew/ref/weaponIndex.ref', 'r')
        indexDump = fileIndex.read()
        self.weaponIndex = {}
        for i in indexDump.split('\n'):
            self.weaponIndex[i[:2]] = i.rstrip('\r')
        fileIndex.close()
        
        #inputs
        self.charaName = self.charaNameInput
        self.charaName.setPlainText(self.charaNameIndex[self.fileName[:3]])
        self.weaponName = self.weapNameInput
        self.weaponName.setPlainText(self.weaponIndex[self.fileName.split('_')[1]])
        self.exportPath = self.exportPathInput
        self.exportPath.setPlainText(self.boneFBX + '/' + self.fileName[:3] + '/Motions/' + self.weaponIndex[self.fileName.split('_')[1]])
        self.exportName = self.motionInput
        self.exportName.setPlainText(self.fileName)

        
        #radio buttons
        self.ingameExport = self.ingameButton1 #ingame
        self.cutsceneExport = self.ingameButton2 #cutscene
        
        self.exportButton.clicked.connect(self.expButton)#initialising button for file open
        
        #self.folderSearchButton.clicked.connect(self.folderSearch)#initialising button for folder search, not in use now
    
    '''
    def folderSearch(self):
        caption = 'Select folder...'
        fileFilter = 'Maya Ascii (*ma)(*.ma) Maya Binary (*mb)(*.mb)'
        self.newExportPath = cmds.fileDialog2(ds=2, ff=fileFilter, cap=caption, fm=1, dir = 'D:/SER/SVN/Unity/motion/fbx_yard/Assets/Models_Characters')
        print self.newExportPath
        #self.exportPath.setPlainText(self.newExportPath)
    ''' #not in use now
    
    
    def expButton(self):
        #combined export button
        self.export_1()
        self.export_2()
        
    
    def export_1(self):
        
        #perform all the requisite checks and tasks before exporting
        self.importReference()
        self.bakeHIK()
        self.deleteNonHIK()
        
        #this section of code for doing checks if folder exists, and if it doesn't, creating it
        if not os.path.exists(self.exportPath.toPlainText()):
            print (u'パスは存在していないので、作ります')
            os.makedirs(self.exportPath.toPlainText())

        
    def export_2(self):
        
        mel.eval('source gameFbxExporter;gameFbxExporter();')#opening game exporter
        pm.tabLayout('gameExporterTabLayout', st = 'gameExporterAnimationTab', edit = True) #switches over to the animation tab
        mel.eval('gameExp_CurrentTabChanged();gameExp_UpdatePrefix;gameExp_PopulatePresetList();gameExp_CreateExportTypeUIComponents();')#updates the window
        mel.eval('setAttr("gameExporterPreset2.exportSetIndex") `optionMenu -q -select anim_gameExporterExportSet`; gameExp_CreateExportTypeUIComponents;') #set export to export selection
        
        try: #spamming delete entry in case there are entries before already
            mel.eval('gameExp_DeleteAnimationClipLayout 0;') 
            mel.eval('gameExp_DeleteAnimationClipLayout 0;') 
            mel.eval('gameExp_DeleteAnimationClipLayout 0;')
            mel.eval('gameExp_DeleteAnimationClipLayout 0;')
            mel.eval('gameExp_DeleteAnimationClipLayout 0;')
        except:
            pass
        
        mel.eval('gameExp_AddNewAnimationClip 1;') # adds a new clip
        mel.eval('setAttr($gGameFbxExporterCurrentNode + ".exportPath") - type "string" "' + self.exportPath.toPlainText() + '";') #setting address
        
        formLayout1 = pm.layout('anim_gameExporterExportTypeFormLayout', query = True, childArray = True)[0]
        formLayout2 = pm.layout('anim_gameFbxExporterScrollLayout', query = True, childArray = True)[0]
        fieldText1 = pm.layout(formLayout2, query = True, childArray = True)[1]
        self.clipNameFieldpy = 'gameExporterWindow|gameExporterTabFormLayout|gameExporterTabLayout|gameExporterAnimationTab|anim_gameExporterMainFormLayout|anim_gameExporterExportTypeFormLayout|' + formLayout1 + '|anim_gameFbxExporterAnimClipFrameLayout|anim_gameFbxExporterAnimClipFormLayout|anim_gameFbxExporterScrollLayout|' + formLayout2 + '|' + fieldText1 
        mel.eval('gameExp_SetUniqueAnimationClipName 0"' + self.fileName + '"' + self.clipNameFieldpy + ';')#changing name? the 0 at the start indicates it position in the list of game clips
        #mel.eval('gameExp_SetUniqueAnimationClipName 0"' + self.fileName + '"' + self.clipNameFieldpy + ';')#changing name? the 0 at the start indicates it position in the list of game clips
        
        
        if self.ingameExport.isChecked() == 1: #forking code for future cutscene export
            pass
        elif self.cutsceneExport.isChecked() == 1:
            pass
        
        mel.eval('gameExp_DoExport();')
        
        mel.eval('gameExp_DeleteAnimationClipLayout 0;') # delete clip afterward
        pm.confirmDialog(title = 'SER 出力ツール', message = u'モーションは出力しました')
        print('SER Export complete!')
        #end of export
        
    
    def bakeHIK(self):
        mel.eval('HIKCharacterControlsTool') #command to open humanIK
        
        pm.mel.hikSetCurrentCharacter("Character1") #selecting character
        pm.mel.hikUpdateCurrentCharacterFromScene()
        pm.mel.hikUpdateContextualUI()
        
        pm.mel.hikBakeCharacter(0) #this is the bake to skeleton command
        #pm.mel.hikBakeToControlRig(0)
        
    def deleteNonHIK(self):
        
        pm.mel.hikDeleteControlRig()
        delList = []
        #deletes everything other than the HIK bones and stuff
        for i in pm.ls(type = 'transform'):
            if not pm.listRelatives(i, parent = True) and not i == 'top' and not i == 'side' and not i == 'persp' and not i == 'front' and not i == 'Character_Holder':
                delList.append(i)
        pm.delete(delList)
        print(str(delList) + u'　を削除します')
        #delete the mesh under character Holder
        for i in pm.listRelatives('Character_Holder'):
            if i.find('Character') == -1:
                print (i + u' を削除します')
                pm.delete(i)
    
    def importReference(self):
        #removing weapon references
        for i in cmds.file(reference = True, query = True, shortName = True):
            if i[:3] != 'SER':
                cmds.file(i, removeReference = True)
        #importing reference
        cmds.file(cmds.file(reference = True, query = True), importReference = True)