# encoding: utf-8
'''
________________________________________________________________
Prism Picker

Author: Chew Zishen
Written on: 2018 / 02 / 13

Prism Picker for animation


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
import pickerTest #this is the UI file
reload(pickerTest)
from pickerTest import Ui_MainWindow



def main():
    mayaMainWindowPtr = omui.MQtUtil.mainWindow()
    mayaMainWindow = shiboken2.wrapInstance(long(mayaMainWindowPtr), QtWidgets.QWidget) 
    expDialog = MainWindow()
    expDialog.show()
    
    return expDialog
    


class MainWindow(QtWidgets.QDialog, Ui_MainWindow):

    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)
        self.setupUi(self)
        
        self.setParent(mayaMainWindow)#parent to maya
        self.setWindowFlags(Qt.Window)#parent to maya
        
        self.fkLowerArm.mousePressEvent = self.fkLowArm()
        #self.folderSearchButton.clicked.connect(self.folderSearch)#initialising button for folder search, not in use now
    '''
    def folderSearch(self):
        caption = 'Select folder...'
        fileFilter = 'Maya Ascii (*ma)(*.ma) Maya Binary (*mb)(*.mb)'
        self.newExportPath = cmds.fileDialog2(ds=2, ff=fileFilter, cap=caption, fm=1, dir = 'D:/SER/SVN/Unity/motion/fbx_yard/Assets/Models_Characters')
        print self.newExportPath
        #self.exportPath.setPlainText(self.newExportPath)
    ''' #not in use now
    
    def fkLowArm(self):
    	print('fkLowerArm')
    	
    def fkUpArm(self):
    	print('fkUpperArm')
    	
    def fkUpArm1(self):
    	print('fkUpperArm1')