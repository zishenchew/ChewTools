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
sys.path.append('E:/ChewTools/SER/ChewToolsExporter')#adding new directory for tools to import

import PySide2 #importing modules for the UI
import PySide2.QtWidgets as QtWidgets
import PySide2.QtGui as QtGui
from PySide2 import QtUiTools
import ExporterUI_001 #this is the UI file
reload(ExporterUI_001)
from ExporterUI_001 import Ui_MainWindow

class MainWindow(QtWidgets.QMainWindow, Ui_MainWindow):

    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)
        self.setupUi(self)
        
        
        self.fileName = cmds.file(q = True, sceneName = True, shortName = True)
        self.currentAddress = cmds.file(q = True, location = True).rstrip(self.fileName)
        
        #declaring output paths
        #self.boneFBX = 'D:/SER/SVN/Unity/motion/fbx_yard/Assets/Models_Characters'
        self.boneFBX = 'E:/SER working folder/test/Unity Folder'
        self.polyFBX = '//p.sv/Prism/project/SER/check/motion'
        self.maFiles = 'D:/SER/SVN/MAYA/motion/maya'
        
        #loading character names and weapon index
        fileIndex = open('//p.sv/Prism/project/SER/user/chew/charaIndex.ref', 'rb')
        indexDump = fileIndex.read().decode("UTF-8")
        self.charaNameIndex = {}
        self.charaWeaponIndex = {}
        for i in indexDump.split('\n'):#assigning character names to index
            self.charaNameIndex[i[:3]] = i.split('_')[1].rstrip('\r')
            
        for i in indexDump.split('\n'):#assigning weapon to index
            self.charaWeaponIndex[i[:3]] = i.split('_')[2].rstrip('\r')
        fileIndex.close()
        
        #loading weapon names and index
        fileIndex = open('//p.sv/Prism/project/SER/user/chew/weaponIndex.ref', 'r')
        indexDump = fileIndex.read()
        self.weaponIndex = {}
        for i in indexDump.split('\n'):
            self.weaponIndex[i[:2]] = i.rstrip('\r')
        fileIndex.close()
        '''
        #identifying character
        for i in self.charaNameIndex:
            if self.fileName[:3] == i:
                self.charaNum = i
        
        
        #identifying weapon
        for i in self.weaponIndex:
            if self.fileName.split('_')[1] == i:
                self.weaponName = self.weaponIndex[i]
        '''

        
        #inputs
        self.charaName = self.charaNameInput
        self.charaName.setPlainText(self.charaNameIndex[self.fileName[:3]])
        self.weaponName = self.weapNameInput
        self.weaponName.setPlainText(self.weaponIndex[self.fileName.split('_')[1]])
        self.exportPath = self.exportPathInput
        self.exportPath.setPlainText(self.boneFBX + '/' + self.fileName[:3] + '/' + self.weaponIndex[self.fileName.split('_')[1]])
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
            print ('パスは存在していないので、作ります')
            os.makedirs(self.exportPath.toPlainText())
        #folder section end

        
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
            print('no more to delete')
            pass
        
        print 'after delete'
        mel.eval('gameExp_AddNewAnimationClip 1;') # adds a new clip
        mel.eval('setAttr($gGameFbxExporterCurrentNode + ".exportPath") - type "string" "' + self.exportPath.toPlainText() + '";') #setting address
        print 'before formlayout'
        formLayout1 = pm.layout('anim_gameExporterExportTypeFormLayout', query = True, childArray = True)[0]
        formLayout2 = pm.layout('anim_gameFbxExporterScrollLayout', query = True, childArray = True)[0]
        fieldText1 = pm.layout(formLayout2, query = True, childArray = True)[1]
        self.clipNameFieldpy = 'gameExporterWindow|gameExporterTabFormLayout|gameExporterTabLayout|gameExporterAnimationTab|anim_gameExporterMainFormLayout|anim_gameExporterExportTypeFormLayout|' + formLayout1 + '|anim_gameFbxExporterAnimClipFrameLayout|anim_gameFbxExporterAnimClipFormLayout|anim_gameFbxExporterScrollLayout|' + formLayout2 + '|' + fieldText1 
        mel.eval('gameExp_SetUniqueAnimationClipName 0"asd123"' + self.clipNameFieldpy + ';')#changing name? the 0 at the start indicates it position in the list of game clips
        #mel.eval('gameExp_SetUniqueAnimationClipName 0"' + self.fileName + '"' + self.clipNameFieldpy + ';')#changing name? the 0 at the start indicates it position in the list of game clips
        
        
        if self.ingameExport.isChecked() == 1: #forking code for future cutscene export
            print('ingame export')
        elif self.cutsceneExport.isChecked() == 1:
            print('cutscene export')
        
        mel.eval('gameExp_DoExport();')
        
        mel.eval('gameExp_DeleteAnimationClipLayout 0;') # delete clip afterward
        pm.confirmDialog(title = 'SER 出力ツール', message = 'モーションは出力しました')
        print('SER Export over!')
        #end of export
        
    
    def bakeHIK(self):
        mel.eval('HIKCharacterControlsTool') #command to open humanIK
        
        pm.mel.hikSetCurrentCharacter("Character1") #selecting character
        pm.mel.hikUpdateCurrentCharacterFromScene()
        pm.mel.hikUpdateContextualUI()
        
        pm.mel.hikBakeCharacter(0) #this is the bake to skeleton command
        pm.mel.hikBakeToControlRig(0)
        
    def deleteNonHIK(self):
        
        pm.mel.hikDeleteControlRig()
        delList = []
        #deletes everything other than the HIK bones and stuff
        for i in pm.ls(type = 'transform'):
            if not pm.listRelatives(i, parent = True) and not i == 'top' and not i == 'side' and not i == 'persp' and not i == 'front' and not i == 'Character_Holder':
                #print type(i)
                print i
                delList.append(i)
        pm.delete(delList)


    
    def importReference(self):
        #removing weapon references
        for i in cmds.file(reference = True, query = True, shortName = True):
            if i[:3] != 'SER':
                print i
                cmds.file(i, removeReference = True)
        #importing reference
        cmds.file(cmds.file(reference = True, query = True), importReference = True)

    




#this calls up the window
if __name__ == "__main__":
    app = QtWidgets.QApplication.instance()
    MainWindow = MainWindow()
    MainWindow.show()
    app.exec_()
'''

#from os import listdir


#def ChewToolsExporter():

fileName = cmds.file(q = True, sceneName = True, shortName = True)
currentAddress = cmds.file(q = True, location = True).rstrip(fileName)

#declaring important addresses
boneFBX = 'D:/SER/SVN/Unity/motion/fbx_yard/Assets/Models_Characters'
polyFBX = '//p.sv/Prism/project/SER/check/motion'
maFiles = 'D:/SER/SVN/MAYA/motion/maya'

#importing reference
#cmds.file(reference = True, query = True)
cmds.file(cmds.file(reference = True, query = True), importReference = True)





#bake
#use hikBakeToSkeleton
mel.eval('HIKCharacterControlsTool') #command to open humanIK
pm.mel.hikBakeCharacter(0) #this is the bake to skeleton command


#delete unnecessary things
for i in pm.ls(type = 'transform'):
    if not pm.listRelatives(i, parent = True):
        #print i
        if not i == 'front' and not i == 'side' and not i == 'top' and not i == 'persp' and not i == 'Character1_Ctrl_Reference':
            print (i + ' を削除します')
            pm.delete(i)

	#not needed since it is all done in __init__
    def charaIndex(self):
        #loading character names and weapon index
        self.fileIndex = open('//p.sv/Prism/project/SER/user/chew/charaIndex.ref', 'rb')
        indexDump = fileIndex.read().decode("UTF-8")
        self.charaNameIndex = {}
        self.charaWeaponIndex = {}
        for i in indexDump.split('\n'):#assigning character names to index
            self.charaNameIndex[i[:3]] = i.split('_')[1].rstrip('\r')
            
        for i in indexDump.split('\n'):#assigning weapon to index
            self.charaWeaponIndex[i[:3]] = i.split('_')[2].rstrip('\r')
        fileIndex.close()
        
        for i in charaNameIndex:
            print charaNameIndex[i]
        print charaWeaponIndex

        #loading weapon names and index
        fileIndex = open('//p.sv/Prism/project/SER/user/chew/weaponIndex.ref', 'r')
        indexDump = fileIndex.read()
        self.weaponIndex = {}
        for i in indexDump.split('\n'):
            print i[:2] + ' ' + i
            self.weaponIndex[i[:2]] = i.rstrip('\r')



save as separate file

load back original file

pm.mel.hikBakeCharacter(0)
'''