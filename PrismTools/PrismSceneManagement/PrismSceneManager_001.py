# encoding: utf-8
##############################################################################################################################
#
#    Prism Tools v 0.1.20180327
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
from functools import partial
import os


class PrismToolsMainWindow():
    def __init__(self):
        #self.testPath = r'//p.sv/Prism/project/SER/user/chew/ref/'
        self.testPath = r'D:/SER/SVN/MAYA/motion/maya/SER_005_n_mot/'
        #self.x = [i for i in os.listdir(self.testPath) if os.path.isfile(os.path.join(self.testPath, i))]
        self.mayaFolder = r'D:/SER/SVN/MAYA/motion/maya/'
        self.motionFolders = [i for i in os.listdir(self.mayaFolder)]
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
            item = pm.menuItem(label=i)
            mainBody_arg = partial(self.mainBody, i)
            pm.menuItem(item, edit = True, command = mainBody_arg)
        
        #label
        self.masterCol = pm.columnLayout('master col', width = 600)
        self.labelLayout = pm.frameLayout(label = u'Options', labelIndent = 5, marginHeight = 5, nch = 5, width = 550, parent = self.masterCol)
        
        #sceneName
        sceneNameLayout = pm.rowLayout(parent = self.masterCol, nc = 10)
        pm.text(label = u'シーン名：', width = 85, align = 'right')
        pm.text(label = '', width = 15, align = 'left', parent = sceneNameLayout, enable = False) #spacer
        self.sceneName = pm.textField(width = 200)
        
        #button
        yomikomiLayout = pm.rowLayout(parent = self.masterCol, nc = 10)
        #pm.text(label = '', width = 25, align = 'left', parent = yomikomiLayout, enable = False)
        pm.text(label = u'読み込み：', width = 85, height = 20, align = 'right', parent = yomikomiLayout)
        pm.text(label = '', width = 15, align = 'left', parent = yomikomiLayout, enable = False) #spacer
        pm.button(label = '開く', command = self.openFile, width = 75, parent = yomikomiLayout, height = 20)
        
        exportLayout = pm.rowLayout(parent = self.masterCol, nc = 10)
        #pm.text(label = '', width = 25, align = 'left', parent = exportLayout, enable = False)
        pm.text(label = u'保存：', width = 85, height = 20, align = 'right', parent = exportLayout)
        pm.text(label = '', width = 15, align = 'left', parent = exportLayout, enable = False) #spacer
        pm.button(label = '保存', command = lambda x: self.placeHolder(u'保存'), width = 75, parent = exportLayout, height = 20)
        pm.button(label = '出力', command = lambda x: self.placeHolder(u'出力'), width = 75, parent = exportLayout, height = 20)

        #radioLayout = pm.rowLayout(parent = self.masterCol, nc = 10)
        #radButtonGrp = pm.radioButtonGrp(numberOfRadioButtons=3, label='Action:', labelArray3=['開く', '保存', '出力'], cw4 = [100, 75, 75, 75], cal = [1, 'center'])
        #pm.button(label = '実行', command = self.openFile, width = 100, parent = radioLayout)
        
        
        buttonLayout = pm.rowLayout(parent = self.masterCol, nc = 5)
        pm.button(label = '開く', command = self.openFile, width = 75, parent = buttonLayout)
        pm.button(label = '保存', command = self.saveImageCreate, width = 75, parent = buttonLayout)
        pm.button(label = '出力', command = lambda x: self.placeHolder(u'出力'), width = 75, parent = buttonLayout)

        pm.showWindow()
        #pm.window(windowID, edit = True, widthHeight = (600,800))

    def mainBody(self, path, mayaFalse):
        try:
            if pm.rowLayout(self.masterRow, exists = True, query = True):
                print 'yes'
                pm.deleteUI(self.masterRow, layout = True)
        except:
            print 'doesnt exist yet'
        
        self.fileList = [i for i in os.listdir(self.mayaFolder + path) if os.path.isfile(os.path.join(self.mayaFolder + path, i))]
        self.masterRow = pm.rowLayout(width = 600, nc = 5, parent = self.masterCol)
        spacerCol = pm.columnLayout(width = 25, parent = self.masterRow)
        col = pm.columnLayout(width = 600, parent = self.masterRow)
        mainBox = pm.scrollLayout(horizontalScrollBarThickness=16, verticalScrollBarThickness=16, parent = col, width = 500, height = 600)
        self.radColle =  pm.radioCollection()
        self.path = path
        #creating entry for each file
        for i in self.fileList:
            if '.ma' in i[-3:]:
                row1 = pm.rowLayout( i, nc = 5, width = 450, parent = mainBox)
                pm.image( image = str(self.mayaFolder + path + '/' + i).rstrip('.ma') + '.png', height = 100, width = 100)
                column1 = pm.columnLayout(parent = row1)
                
                #writing a partial for command
                radioButtonChange = partial(self.fillSceneName, i)
                pm.radioButton(i, label = i, parent = column1, onCommand = radioButtonChange)
                
                radioSpacer = pm.rowLayout(nc = 2)
                pm.text(label = '', width = 16, align = 'left', parent = radioSpacer, enable = False)
                pm.text( 'SER export', label = 'comment コメント', width = 150, height = 20, align = 'left', parent = radioSpacer, enable = False)
        #print self.mayaFolder + path


    def fillSceneName(self, fieldName, mayaFalse):
        pm.textField(self.sceneName, edit = True, text = fieldName)

    
    def fun(self, tex):
        print(self.mayaFolder + self.path + '/' + pm.radioButton(pm.radioCollection(self.radColle, sl = True, q = True), q= True, label = True))
        pass
    def openFile(self, mayaFalse):
        print(self.testPath + pm.radioButton(pm.radioCollection(self.radColle, sl = True, q = True), q= True, label = True))
        cmds.file(self.mayaFolder + self.path + '/' + pm.textField(self.sceneName, q = True, text = True), open = True, force = True)
        #print 'haha'
        
    def comment(self, mayaFalse):
        pm.promptDialog(title = 'Prism Scene Manager', message = 'コメントを書いてください')
        pass
        
    def saveImageCreate(self, mayaFalse):
        pm.playblast(completeFilename = str(self.mayaFolder + self.path + '/' + pm.radioButton(pm.radioCollection(self.radColle, sl = True, q = True), q= True, label = True)).rstrip('.ma') + '.png', format = 'image', compression = 'png', frame = [pm.currentTime()], forceOverwrite = True, viewer = False, width = 100, height = 100, showOrnaments = False, p = 100, os = True)
        #self.saveFileName = cmds.file(save = True) #saving before exporting
        pass

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