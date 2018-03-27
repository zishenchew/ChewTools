# encoding: utf-8
##############################################################################################################################
#
#    Prism Tools v 0.1.20180326
#    Author: Chew
#     
#
#    Prism Tools
#
#
##############################################################################################################################

import pymel.core as pm
import maya.cmds as cmds
import maya.mel as mel
import os


class PrismToolsMainWindow():
    def __init__(self):
        #self.testPath = r'//p.sv/Prism/project/SER/user/chew/ref/'
        self.testPath = r'D:/SER/SVN/MAYA/motion/maya/SER_005_n_mot/'
        self.x = [i for i in os.listdir(self.testPath) if os.path.isfile(os.path.join(self.testPath, i))]
        self.motionFolders = [i for i in os.listdir(r'D:/SER/SVN/MAYA/motion/maya')]
        #self.radColle =  pm.radioCollection()
        #print self.x
        
    def uiWindow(self):
        #checking for duplicate windows
        windowID = 'sceneBrowser'
        if pm.window(windowID, exists = True):
            pm.deleteUI(windowID)
            pm.windowPref( 'sceneBrowser', remove=True )
        
        #creating window
        pm.window(windowID, title = 'Prism シーン管理', widthHeight = (600,800))
        
        #menu bar
        menuBar = pm.menuBarLayout()
        pm.menu( label='キャラ' )
        for i in self.motionFolders:
            pm.menuItem( label=i )
        
        #label
        masterCol = pm.columnLayout('master col', width = 600)
        labelLayout = pm.frameLayout(label = u'共通ツールス', labelIndent = 5, marginHeight = 5, nch = 5, width = 550, parent = masterCol)
        
        #button
        buttonLayout = pm.rowLayout(parent = labelLayout, nc = 5)
        pm.button(label = '開く', command = self.openFile, width = 150, parent = buttonLayout)
        pm.button(label = '保存', command = lambda x: self.placeHolder(u'保存'), width = 150, parent = buttonLayout)
        pm.button(label = '出力', command = lambda x: self.placeHolder(u'出力'), width = 150, parent = buttonLayout)

        #main body
        masterRow = pm.rowLayout( 'rowLayout01', width = 600, nc = 5, parent = masterCol)
        spacerCol = pm.columnLayout(width = 25, parent = masterRow)
        col = pm.columnLayout( 'columnLayout01', width = 600, parent = masterRow)
        mainBox = pm.scrollLayout(horizontalScrollBarThickness=16, verticalScrollBarThickness=16, parent = col, width = 500, height = 600)
        self.radColle =  pm.radioCollection()
        #creating entry for each file
        for i in self.x:
            row1 = pm.rowLayout( i, nc = 5, width = 450, parent = mainBox)
            pm.image( image = r'D:/ChewTools/PrismTools/icon_whiteBG.png', height = 100, width = 100)
            column1 = pm.columnLayout(parent = row1)
            pm.radioButton(i, label = i, parent = column1)
            radioSpacer = pm.rowLayout(nc = 2)
            pm.text(label = '', width = 16, align = 'left', parent = radioSpacer, enable = False)
            pm.text( 'SER export', label = 'comment コメント', width = 150, height = 20, align = 'left', parent = radioSpacer, enable = False)

        pm.showWindow()
        #pm.window(windowID, edit = True, widthHeight = (600,800))

    def fun(self, tex):
        print 'haha'
        pass
    def openFile(self, mayaFalse):
        print(self.testPath + pm.radioButton(pm.radioCollection(self.radColle, sl = True, q = True), q= True, label = True))
        cmds.file(self.testPath + pm.radioButton(pm.radioCollection(self.radColle, sl = True, q = True), q= True, label = True), open = True, force = True)
        #print 'haha'
        
    def placeHolder(self, butt = 'test'):
        pm.confirmDialog(title = 'Prism Scene Manager', message = u'%s しました。 TEST ONLY' %butt)
        pass

'''
class PrismToolsFunction(PrismToolsMainWindow):
    def __init__(self):
        PrismToolsMainWindow.__init__(self)
        
    def fun(self, tex):
        print 'haha'
        print tex
        pass
    def radioBut(self, *args):
        print(pm.radioCollection(self.radColle, sl = True, q = True))
        print(self.testPath + pm.radioButton(pm.radioCollection(self.radColle, sl = True, q = True), q= True, label = True))
        
    def openFile(self):
        pass
'''

x = PrismToolsMainWindow().uiWindow()