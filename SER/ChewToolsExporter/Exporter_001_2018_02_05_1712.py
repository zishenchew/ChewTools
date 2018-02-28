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
import maya.OpenMayaUI as apiUI
import os
import sys
sys.path.append('//p.sv/Prism/project/SER/user/chew/SERTools')#adding new directory for tools to import
import PySide2 #importing modules for the UI
import PySide2.QtWidgets as QtWidgets
import PySide2.QtGui as QtGui
#import PySide2.QtCore
from PySide2.QtCore import *  #either this or the other

from PySide2 import QtUiTools
import shiboken2
import ExporterUI_001 #this is the UI file
reload(ExporterUI_001)
from ExporterUI_001 import Ui_MainWindow

mayaMainWindowPtr = omui.MQtUtil.mainWindow()
mayaMainWindow = shiboken2.wrapInstance(long(mayaMainWindowPtr), QtWidgets.QWidget) 

def main():
    #mayaMainWindowPtr = omui.MQtUtil.mainWindow()
    #mayaMainWindow = shiboken2.wrapInstance(long(mayaMainWindowPtr), QtWidgets.QWidget) 
    expDialog = MainWindow()
    expDialog.show()
    
    return expDialog
    


class MainWindow(QtWidgets.QDialog, Ui_MainWindow):

    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)
        self.setupUi(self)
        
        self.setParent(mayaMainWindow)#parent to maya
        self.setWindowFlags(Qt.Window)#parent to maya
        
        self.fileName = cmds.file(q = True, sceneName = True, shortName = True).rstrip('.mb')
        self.fileNameSplit = self.fileName.rstrip('.ma').split('_')
        
        if self.fileNameSplit[0] == 'SER': #charaModel
            self.fileType = 'charaModel'
            self.charaNumber = self.fileNameSplit[1]
            self.weaponNumber = None
            #print('charaModel') #for debugging purposes
        elif len(self.fileNameSplit[0]) == 2:
            self.fileType = 'commonMotion'
            self.charaNumber = None
            self.weaponNumber = self.fileNameSplit[0]
            #print('commonMotion') #for debugging purposes
        elif len(self.fileNameSplit[0]) == 3 and self.fileNameSplit[0] != 'SER':
            self.fileType = 'charaMotion'
            self.charaNumber = self.fileNameSplit[0]
            self.weaponNumber = self.fileNameSplit[1]
            #print('charaMotion') #for debugging purposes
        
        self.currentAddress = cmds.file(q = True, location = True).rstrip(self.fileName)
        
        '''#not in use anymore
        #perform check on what type of file is it here
        if self.fileName[2] == '_': #if the 3rd char is an underscore
            self.fileType = 'commonMotion'
            print('commonMotion' )
        elif self.fileName[:3] == 'SER': #if the 1st 3 chars are SER, it's a model
            self.fileType = 'charaModel'
            print('model')
        elif self.fileName[3] == '_' and self.fileName[:3] != 'SER': #if 4th char is underscore and 1st 3 chars aren't SER
            self.fileType = 'charaMotion'
            print('charaMotion')
        '''
        
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
        #loading weapon paths
        if self.fileType == 'commonMotion': #this weapon path is only needed if the file is a common motion
            pathRead = open('//p.sv/Prism/project/SER/user/chew/ref/weaponPath.ref', 'rb')
            pathDump = pathRead.read().decode('UTF-8')
            self.weaponPathIndex = {}
            for i in pathDump.split('\n'):
                self.weaponPathIndex[i.split()[0]] = i.split()[1]
            self.commonMotionExportPath = self.weaponPathIndex[self.fileName[:2]] #assigning weapon export path as export path
            pathRead.close()
        
        #declaring output paths
        self.boneFBX = 'D:/SER/SVN/Unity/motion/fbx_yard/Assets/Models_Characters'
        self.polyFBX = '//p.sv/Prism/project/SER/check/motion'
        self.maFiles = 'D:/SER/SVN/MAYA/motion/maya'
        

        
        
        
        #defining chara name and weapon name with chara number and weapon number
        if self.fileType == 'charaMotion':
            self.charaNameText = self.charaNameIndex[self.charaNumber]  #charaMotion
            self.weaponNameText = self.weaponIndex[self.weaponNumber]
        elif self.fileType == 'charaModel':
            self.charaNameText = self.charaNameIndex[self.charaNumber]  #charaModel
            self.weaponNameText = None
            if self.fileNameSplit[2] == 'n':
                self.kyojinka = '_001_'
            else:
                self.kyojinka = '_000_'
        elif self.fileType == 'commonMotion':
            self.charaNameText = '武器共通モーション'                   #commonMotion
            self.weaponNameText = self.weaponIndex[self.weaponNumber]   #commonMotion
        '''
        #defining weapon name
        if self.fileType == 'charaMotion':
            self.weaponNameText
        
        if self.fileType == 'commonMotion':
            self.weaponNameText = self.weaponIndex[self.fileName.split('_')[0]]
        else:
            try:
                self.weaponNameText = self.weaponIndex[self.fileName.split('_')[1]]
            except:
                pass
        '''
        
        #defining export path
        if self.fileType == 'charaMotion':
            self.exportPathText = self.boneFBX + '/' + self.charaNumber + '/Motions/' + self.weaponIndex[self.weaponNumber]
        elif self.fileType == 'commonMotion': #weapon common motion
            self.exportPathText = self.weaponPathIndex[self.weaponNumber]
        elif self.fileType == 'charaModel':
            self.exportPathText = 'D:/SER/SVN/MAYA/model/' + self.fileName.rstrip('.ma').rstrip('.mb') + '/FBX'
        
        
        '''
        INPUTS
        '''
        #motion
        if self.fileType == 'charaMotion' or self.fileType == 'commonMotion':
            self.charaName = self.charaNameInput
            self.charaName.setPlainText(self.charaNameText)
            self.weaponName = self.weapNameInput
            self.weaponName.setPlainText(self.weaponNameText)
            self.exportPath = self.exportPathInput
            self.exportPath.setPlainText(self.exportPathText)
            self.exportName = self.motionInput
            self.exportName.setPlainText(self.fileName)
            #print 'animTab' #for debugging purposes
        
        #model
        if self.fileType == 'charaModel':
            self.charaNameInput_2.setPlainText(self.charaNameText) #same as motion
            self.exportPathInput_2.setPlainText(self.exportPathText) #
            #print 'modelTab' #for debugging purposes
            
        

        
        #radio buttons
        self.ingameExport = self.ingameButton1 #ingame
        self.cutsceneExport = self.ingameButton2 #cutscene
        
        #export buttons
        self.animExportButton.clicked.connect(self.animExpButton)
        self.modelExportButton.clicked.connect(self.modelExport)
        
        #self.folderSearchButton.clicked.connect(self.folderSearch)#initialising button for folder search, not in use now
    

    
    
    def animExpButton(self):
        #combined export button
        self.saveFileName = cmds.file(save = True) #saving before exporting
        self.animExport_1()
        self.animExport_2()
        cmds.file(self.saveFileName, open = True, force = True)
        pm.confirmDialog(title = 'SER 出力ツール', message = u'モーションは出力しました')
        print('SER Export complete!')
        
    
    def animExport_1(self):
        
        #perform all the requisite checks and tasks before exporting
        self.importReference()
        self.bakeHIK()
        self.deleteNonHIK()
        
        #this section of code for doing checks if folder exists, and if it doesn't, creating it
        if not os.path.exists(self.exportPath.toPlainText()):
            print (u'パスは存在していないので、作ります')
            os.makedirs(self.exportPath.toPlainText())

        
    def animExport_2(self):
        
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
        
    
    def modelExport(self):
        #create folder if it doesn't exist
        if not os.path.exists(self.exportPathText):
            print (u'パスは存在していないので、作ります')
            os.makedirs(self.exportPathText)
        self.modelExport_1()
        self.modelExport_2()
        pm.confirmDialog(title = 'SER 出力ツール', message = u'モデルは出力しました')
        print('SER Export complete!')
        
    def modelExport_1(self):
        self.saveFileName = cmds.file(save = True) #saving before exporting
        #delete everything except mesh
        mel.eval('HIKCharacterControlsTool') #command to open humanIK
        
        pm.mel.hikSetCurrentCharacter("Character1") #selecting character
        pm.mel.hikUpdateCurrentCharacterFromScene()
        pm.mel.hikUpdateContextualUI()
        pm.mel.hikDeleteControlRig()
        delList = []
        #deletes everything other than the HIK bones and stuff
        for i in pm.ls(type = 'transform'):
            if not pm.listRelatives(i, parent = True) and not i == 'top' and not i == 'side' and not i == 'persp' and not i == 'front' and not i == 'Character_Holder':
                delList.append(i)
        pm.delete(delList)#deleting everything that isn't the camera and character holder.
        #delete anything else?
        #print('modelExport_1')
        
    def modelExport_2(self):
        cmds.file(self.exportPathText + '/' + self.charaNumber + self.kyojinka + 'Model.fbx', force = True, type = 'FBX export', exportAll = True, options = 'v=0')#underscore is already included in the kyojinka string on both sides
        #re-open the save file
        cmds.file(self.saveFileName, open = True, force = True)
        #print('modelExport_2')