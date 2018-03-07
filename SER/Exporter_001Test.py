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
import maya.OpenMayaAnim as animAPI
import os
import sys
sys.path.append('//p.sv/Prism/project/SER/user/chew/SERTools')#adding new directory for tools to import
import PySide2 #importing modules for the UI
import PySide2.QtWidgets as QtWidgets
import PySide2.QtGui as QtGui
from PySide2.QtCore import *  #either this or the other

from PySide2 import QtUiTools
import shiboken2
import ExporterUI_002 #this is the UI file
reload(ExporterUI_002)
from ExporterUI_002 import Ui_MainWindow

mayaMainWindowPtr = omui.MQtUtil.mainWindow()
mayaMainWindow = shiboken2.wrapInstance(long(mayaMainWindowPtr), QtWidgets.QWidget) 

def main(fujiArgu = 0):

    expDialog = MainWindow(fujiArgu)
    expDialog.show()
    
    return expDialog
    


class MainWindow(QtWidgets.QDialog, Ui_MainWindow):

    def __init__(self, fujiArg, parent=None):
        super(MainWindow, self).__init__(parent)
        self.setupUi(self)
        self.fuji = fujiArg #creating an exception for Fujihara-san for his path
        
        self.setParent(mayaMainWindow)#parent to maya
        self.setWindowFlags(Qt.Window)#parent to maya
        
        self.fileName = cmds.file(q = True, sceneName = True, shortName = True).rstrip('.mb').rstrip('.ma')
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
            if len(self.fileNameSplit[1]) == 4:
                self.fileType = 'cutScene'
                self.charaNumber = self.fileNameSplit[0]
                self.weaponNumber = 'cs'
            else:
                self.fileType = 'charaMotion'
                self.charaNumber = self.fileNameSplit[0]
                #print('charaMotion') #for debugging purposes
                if self.fileNameSplit[1][:8] == 'Resonize':
                    self.fileType = 'kyojinMotion'
                    self.weaponNumber = 're'
                else:
                    self.weaponNumber = self.fileNameSplit[1]


            
        self.currentAddress = cmds.file(q = True, location = True).rstrip(self.fileName)
        
        
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
        if self.fuji == 0:
            self.boneFBX = 'D:/SER/SVN/Unity/motion/fbx_yard/Assets/Models_Characters'
        if self.fuji == 1:
            self.boneFBX = 'D:/SER/SER_SVN/Unity/motion/fbx_yard/Assets/Models_Characters'
        self.polyFBX = '//p.sv/Prism/project/SER/check/motion'
        self.maFiles = 'D:/SER/SVN/MAYA/motion/maya'
        
        
        #defining chara name and weapon name with chara number and weapon number
        if self.fileType == 'charaMotion':
            self.charaNameText = self.charaNameIndex[self.charaNumber]  #charaMotion
            self.weaponNameText = self.weaponIndex[self.weaponNumber]
        elif self.fileType == 'kyojinMotion':
            self.charaNameText = self.charaNameIndex[self.charaNumber]  #kyojinMotion
            self.weaponNameText = self.weaponIndex[self.weaponNumber].lstrip('re_')
        elif self.fileType == 'charaModel':
            self.charaNameText = self.charaNameIndex[self.charaNumber]  #charaModel
            self.weaponNameText = None
            if self.fileNameSplit[2] == 'n':
                self.kyojinka = '_001_'
            else:
                self.kyojinka = '_000_'
        elif self.fileType == 'commonMotion':
            self.charaNameText = u'武器共通モーション'                   #commonMotion
            self.weaponNameText = self.weaponIndex[self.weaponNumber]   #commonMotion
        elif self.fileType == 'cutScene':
            self.charaNameText = self.charaNameIndex[self.charaNumber]                   #cutScene
            self.weaponNameText = u'必殺技'#cutScene
            
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
        elif self.fileType == 'kyojinMotion':
            self.exportPathText = self.boneFBX + '/' + self.charaNumber + '/Motions/' + self.weaponIndex[self.weaponNumber].lstrip('re_')
        elif self.fileType == 'commonMotion': #weapon common motion
            self.exportPathText = self.weaponPathIndex[self.weaponNumber]
            if self.fuji == 1:
                self.exportPathText = 'D:/SER/SER_SVN' + self.weaponPathIndex[self.weaponNumber][10:]
        elif self.fileType == 'charaModel':
            self.exportPathText = 'D:/SER/SVN/MAYA/model/' + 'SER_0' + self.charaNumber[1:] + '_' + self.fileNameSplit[2] + '/FBX'
        elif self.fileType == 'cutScene':
            self.exportPathText = r'D:/SER/SVN/Unity/motion/fbx_yard/Assets/CutScenes/CutScene_Special/' + self.fileNameSplit[0]
        
        '''
        INPUTS
        '''
        #motion
        if self.fileType == 'charaMotion' or self.fileType == 'commonMotion' or self.fileType == 'kyojinMotion' or self.fileType == 'cutScene':
            self.charaName = self.charaNameInput
            self.charaName.setText(self.charaNameText)
            self.weaponName = self.weapNameInput
            self.weaponName.setText(self.weaponNameText)
            self.exportPath = self.exportPathInput
            self.exportPath.setText(self.exportPathText)
            self.exportName = self.motionInput
            self.exportName.setText(self.fileName)
            #print 'animTab' #for debugging purposes
            self.ExporterTab.setCurrentIndex(0)#setting animation(0) tab to be switched whenever the tool is loaded
        
        #model
        elif self.fileType == 'charaModel':
            self.charaNameInput_2.setText(self.charaNameText) #same as motion
            self.exportPathInput_2.setText(self.exportPathText) #
            #print 'modelTab' #for debugging purposes
            self.ExporterTab.setCurrentIndex(1)#setting model(1) tab to be switched whenever the tool is loaded
        

        
        #radio buttons
        self.ingameExport = self.ingameButton1 #ingame
        self.cutsceneExport = self.ingameButton2 #cutscene
        
        #export buttons
        
        self.animExportButton.clicked.connect(self.animExpButton)
        self.modelExportButton.clicked.connect(self.modelExport)
        
        #self.folderSearchButton.clicked.connect(self.folderSearch)#initialising button for folder search, not in use now
    
    
    #___________________________________________________________________________________________________________________________________________________________________________________________________
    #
    #functions start
    #___________________________________________________________________________________________________________________________________________________________________________________________________
    
    def cameraExport(self):
        print 'camera export!'
        camGroup = []
        try:
            for i in pm.listRelatives('camera1_group'):
                camGroup.append(i)
        except:
            for i in pm.listRelatives('camera_group'):
                camGroup.append(i)
        if pm.objExists('camera1_group') == False and pm.objExists('camera_group') == False:
            pm.confirmDialog(title = 'SER 出力ツール', message = u'camera_group が見つけていません')
            return
        print camGroup
        pm.select('camera1_group', camGroup)
        
        self.animExport_2()
    
    def animExpButton(self):
        #combined export button
        self.saveFileName = cmds.file(save = True) #saving before exporting
        if self.ingameExport.isChecked() == True:#motion export
            
            self.animExport_1()
            self.animExport_2()
            
        elif self.cutsceneExport.isChecked() == True: #camera export
            self.cameraExport()
            
        cmds.file(self.saveFileName, open = True, force = True)
        try: #spamming delete entry in case there are entries before already
            mel.eval('gameExp_DeleteAnimationClipLayout 0;')
            
        except:
            pass
        pm.confirmDialog(title = 'SER 出力ツール', message = u'モーションは出力しました')
        print('SER Export complete!')
        
    
    def animExport_1(self):
        
        #perform all the requisite checks and tasks before exporting
        self.importReference()
        self.removeNamespace()
        self.bakeHIK()
        self.deleteNonHIK()
        
        #this section of code for doing checks if folder exists, and if it doesn't, creating it
        if not os.path.exists(self.exportPath.text()):
            print (u'パスは存在していないので、作ります')
            os.makedirs(self.exportPath.text())

        
    def animExport_2(self):
        
        mel.eval('source gameFbxExporter;gameFbxExporter();')#opening game exporter
        pm.tabLayout('gameExporterTabLayout', st = 'gameExporterAnimationTab', edit = True) #switches over to the animation tab
        mel.eval('gameExp_CurrentTabChanged();gameExp_UpdatePrefix;gameExp_PopulatePresetList();gameExp_CreateExportTypeUIComponents();')#updates the window
        x = mel.eval("ls $gGameFbxExporterCurrentNode") #getting the value of the preset
        pm.setAttr(x[0] + '.exportSetIndex', 2)#set export to export selection
        mel.eval('gameExp_CreateExportTypeUIComponents;')#refresh the option
        #mel.eval('setAttr("gameExporterPreset2.exportSetIndex") `optionMenu -q -select anim_gameExporterExportSet`; gameExp_CreateExportTypeUIComponents;') 
        
        try: #spamming delete entry in case there are entries before already
            mel.eval('gameExp_DeleteAnimationClipLayout 0;')
            mel.eval('gameExp_DeleteAnimationClipLayout 0;')
            mel.eval('gameExp_DeleteAnimationClipLayout 0;')
            mel.eval('gameExp_DeleteAnimationClipLayout 0;')
            mel.eval('gameExp_DeleteAnimationClipLayout 0;')
        except:
            pass
        mel.eval('gameExp_AddNewAnimationClip 1;') # adds a new clip
        mel.eval('setAttr($gGameFbxExporterCurrentNode + ".exportPath") - type "string" "' + self.exportPath.text() + '";') #setting address
        
        formLayout1 = pm.layout('anim_gameExporterExportTypeFormLayout', query = True, childArray = True)[0] #formLayout1, formLayout2, fieldText1 and self.clipNameFieldpy are all 
        formLayout2 = pm.layout('anim_gameFbxExporterScrollLayout', query = True, childArray = True)[0]
        fieldText1 = pm.layout(formLayout2, query = True, childArray = True)[1]
        self.clipNameFieldpy = 'gameExporterWindow|gameExporterTabFormLayout|gameExporterTabLayout|gameExporterAnimationTab|anim_gameExporterMainFormLayout|anim_gameExporterExportTypeFormLayout|' + formLayout1 + '|anim_gameFbxExporterAnimClipFrameLayout|anim_gameFbxExporterAnimClipFormLayout|anim_gameFbxExporterScrollLayout|' + formLayout2 + '|' + fieldText1 
        
        if self.ingameExport.isChecked() == True:#motion export
            mel.eval('gameExp_SetUniqueAnimationClipName 0"' + self.exportName.text() + '"' + self.clipNameFieldpy + ';')#changing name? the 0 at the start indicates it position in the list of game clips
            pm.select('Character_Holder')
        elif self.cutsceneExport.isChecked() == True: #camera export
            mel.eval('gameExp_SetUniqueAnimationClipName 0"' + self.exportName.text() + '_cam' + '"' + self.clipNameFieldpy + ';')#changing name? the 0 at the start indicates it position in the list of game clips
        
        mel.eval('gameExp_DoExport();')
        
        mel.eval('gameExp_DeleteAnimationClipLayout 0;') # delete clip afterward
        #end of export
        
    
    def bakeHIK(self):
        #bake whip if present
        #if pm.objExists('ikJoint_Weapon2'):
        #    pm.bakeResults(pm.listRelatives('Helper_Weapon1'), time = (animAPI.MAnimControl.minTime().value(), animAPI.MAnimControl.maxTime().value()), simulation = True, sampleBy = 1, oversamplingRate = 1, disableImplicitControl = True, preserveOutsideKeys = True, sparseAnimCurveBake = False, removeBakedAttributeFromLayer = False, removeBakedAnimFromLayer = False, bakeOnOverrideLayer = False, minimizeRotation  = True, controlPoints = False, shape = True)
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
        print(str(delList) + u' を削除します')
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
        try:
            cmds.file(cmds.file(reference = True, query = True), importReference = True)
        except:
            print('no references to import')
        
    
    def removeNamespace(self): #remove namespaces
        pm.namespace(setNamespace=':') #setting namespace to root
        namespaces = pm.namespaceInfo(listOnlyNamespaces = True, recurse = True)
        namespaceLooper = 0
        for i in namespaces: #this for loop checks for all the namespaces
            if i != 'shared' and i != 'UI':
                namespaceLooper +=1 #this keeps track of the number of namespaces to delete
        while namespaceLooper >0: #this while loop will keep running for as long as there are namespaces that are not root to delete
            namespaces = pm.namespaceInfo(listOnlyNamespaces = True)
            for i in namespaces:
                if i != 'shared' and i != 'UI':
                    pm.namespace(mergeNamespaceWithRoot = True, removeNamespace = i)
                    namespaceLooper -= 1 #this will decrement the namespace count so the loop will be able to break out
    
    def modelExport(self):
        #create folder if it doesn't exist
        if not os.path.exists(self.exportPathInput_2.text()):
            print (u'パスは存在していないので、作ります')
            os.makedirs(self.exportPathInput_2.text())
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
        cmds.file(self.exportPathInput_2.text() + '/' + self.charaNumber + self.kyojinka + 'Model.fbx', force = True, type = 'FBX export', exportAll = True, options = 'v=0')#underscore is already included in the kyojinka string on both sides
        #re-open the save file
        cmds.file(self.saveFileName, open = True, force = True)
        #print('modelExport_2')