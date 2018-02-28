# encoding: utf-8
'''
________________________________________________________________
�`���[�c�[���X SER Export

Author: Chew Zishen
Written on: 2018 / 02 / 01

SER �̏o�͎������c�[���B

SER exporter is to automate the tedious export process and create fullproof mistake-less export system


________________________________________________________________
'''
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
    #old stuff
    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)
        self.setupUi(self)
        
        
        self.fileName = cmds.file(q = True, sceneName = True, shortName = True)
        self.currentAddress = cmds.file(q = True, location = True).rstrip(self.fileName)
        
        self.boneFBX = 'D:/SER/SVN/Unity/motion/fbx_yard/Assets/Models_Characters'
        self.polyFBX = '//p.sv/Prism/project/SER/check/motion'
        self.maFiles = 'D:/SER/SVN/MAYA/motion/maya'
        
        #inputs
        self.exportPath = self.exportPathInput
        self.exportPath.setPlainText(self.currentAddress)
        self.exportName = self.motionInput
        self.exportName.setPlainText(self.fileName)
        
        #radio buttons
        self.ingameExport = self.ingameButton1 #ingame
        self.cutsceneExport = self.ingameButton2 #cutscene
        
        self.exportButton.clicked.connect(self.export_1)#initialising button for file open
    
    #opening file
    
    #new stuff from here
    def export_1(self):
        if self.ingameExport.isChecked() == 1:
            print('ingame export')
        elif self.cutsceneExport.isChecked() == 1:
            print('cutscene export')
        print('export!')
        #end of export

    def bakeHIK(self):
        
        mel.eval('HIKCharacterControlsTool') #command to open humanIK
        pm.mel.hikBakeCharacter(0) #this is the bake to skeleton command
        
    def deleteNonHIK(self):
        #deletes everything other than the HIK bones and stuff
        for i in pm.ls(type = 'transform'):
            if not pm.listRelatives(i, parent = True):
                #print i
                if not i == 'front' and not i == 'side' and not i == 'top' and not i == 'persp' and not i == 'Character1_Ctrl_Reference':
                    print (i + ' ���폜���܂�')
                    pm.delete(i)
        #end of delete


#this calls up the window
if __name__ == "__main__":
    app = QtWidgets.QApplication.instance()
    MainWindow = MainWindow()
    MainWindow.show()
    app.exec_()