# encoding: utf-8
##############################################################################################################################
#
#    Prism Tools v 0.1.20180406
#    Author: Chew
#    
#
#    Prism Tools
#    A scene management tool for managing SER files on SVN
#
##############################################################################################################################

import pymel.core as pm
# import maya.mel as mel
from functools import partial
import os


class PrismToolsMainWindow():
    def __init__(self):
        self.testPath = r'D:/SER/SVN/MAYA/motion/maya/SER_005_n_mot/'
        self.mayaMotionFolder = r'D:/SER/SVN/MAYA/motion/maya/'
        self.motionFolders = {i: self.mayaMotionFolder + i for i in os.listdir(self.mayaMotionFolder)}
        self.mayaModelFolder = r'D:/SER/SVN/MAYA/model/'
        self.modelFolders = {i: self.mayaModelFolder + i + '/scenes/' for i in os.listdir(self.mayaModelFolder)}

    def uiWindow(self):
        # checking for duplicate windows
        windowID = 'sceneBrowser'
        if pm.window(windowID, exists=True):
            pm.deleteUI(windowID)
            pm.windowPref('sceneBrowser', remove=True)

        # creating window
        pm.window(windowID, title=u'Prism シーン管理', widthHeight=(600, 800))

        # menu bar
        menuBar = pm.menuBarLayout()
        motionMenu = pm.menu(label=u'モーション')
        charaMoMenu = pm.menuItem(label=u'キャラ', parent=motionMenu, subMenu=True)
        kyojinMoMenu = pm.menuItem(label=u'キョウジン', parent=motionMenu, subMenu=True)
        '''
        for i in sorted(self.motionFolders):
            mainBody_arg = partial(self.mainBody, self.motionFolders[i])
            item = pm.menuItem(label=i, command = mainBody_arg, parent = motionMenu)
        '''
        for i in sorted(self.motionFolders):
            try:
                if i.split('_')[-2][0] == 'n':
                    mainBody_arg = partial(self.mainBody, self.motionFolders[i])
                    pm.menuItem(label=i, command=partial(self.mainBody, self.motionFolders[i]), parent=charaMoMenu)
                elif i.split('_')[-2][0] == 'k':
                    mainBody_arg = partial(self.mainBody, self.motionFolders[i])
                    pm.menuItem(label=i, command=partial(self.mainBody, self.motionFolders[i]), parent=kyojinMoMenu)
            except:
                pass

        modelMenu = pm.menu(label=u'モデル')
        charSubMenu = pm.menuItem(label=u'キャラ', parent=modelMenu, subMenu=True)
        kyojinSubMenu = pm.menuItem(label=u'キョウジン', parent=modelMenu, subMenu=True)
        weapSubMenu = pm.menuItem(label=u'武器', parent=modelMenu, subMenu=True)
        for i in sorted(self.modelFolders):
            if i.split('_')[-1][0] == 'n':
                mainBody_arg = partial(self.mainBody, self.modelFolders[i])
                item = pm.menuItem(label=i, command=mainBody_arg, parent=charSubMenu)
            elif i.split('_')[-1][0] == 'k':
                mainBody_arg = partial(self.mainBody, self.modelFolders[i])
                item = pm.menuItem(label=i, command=mainBody_arg, parent=kyojinSubMenu)
            elif i.split('_')[-1][0] == 'w':
                mainBody_arg = partial(self.mainBody, self.modelFolders[i])
                item = pm.menuItem(label=i, command=mainBody_arg, parent=weapSubMenu)
        '''
        for i in sorted(self.modelFolders):
            mainBody_arg = partial(self.mainBody, self.modelFolders[i])
            item = pm.menuItem(label=i, command = mainBody_arg, parent = modelMenu)        
        '''

        # label
        self.masterCol = pm.columnLayout('master col', width=600)
        self.labelLayout = pm.frameLayout(label=u'Options', labelIndent=5, marginHeight=5, nch=5, width=550,
                                          parent=self.masterCol)

        # sceneName
        sceneNameLayout = pm.rowLayout(parent=self.masterCol, nc=10)
        pm.text(label=u'シーン名：', width=85, align='right')
        pm.text(label='', width=15, align='left', parent=sceneNameLayout, enable=False)  # spacer
        self.sceneName = pm.textField(width=410)
        pm.button(label=u'開', command=self.folderOpen, width=25, parent=sceneNameLayout, height=20)

        # button
        yomikomiLayout = pm.rowLayout(parent=self.masterCol, nc=10)
        # pm.text(label = '', width = 25, align = 'left', parent = yomikomiLayout, enable = False)
        pm.text(label=u'読み込み：', width=85, height=20, align='right', parent=yomikomiLayout)
        pm.text(label='', width=15, align='left', parent=yomikomiLayout, enable=False)  # spacer
        pm.button(label=u'開く', command=self.openFile, width=75, parent=yomikomiLayout, height=20)
        pm.button(label=u'レファレンス', command=self.referenceButton, width=75, parent=yomikomiLayout, height=20)
        pm.text(label='', width=5, align='left', parent=yomikomiLayout, enable=False)  # spacer
        self.refNamespace = pm.textField(placeholderText=u'ネームスペース', width=100)

        exportLayout = pm.rowLayout(parent=self.masterCol, nc=10)
        pm.text(label=u'保存：', width=85, height=20, align='right', parent=exportLayout)
        pm.text(label='', width=15, align='left', parent=exportLayout, enable=False)  # spacer
        pm.button(label=u'保存', command=self.saveFile, width=75, parent=exportLayout, height=20)
        pm.button(label=u'出力（仮）', command=lambda x: self.placeHolder(u'出力'), width=75, parent=exportLayout, height=20)

        spacerLayout = pm.rowLayout(parent=self.masterCol, nc=5)
        pm.text(label='', width=15, height=25, align='left', parent=spacerLayout, enable=False)  # spacer

        pm.showWindow()
        # pm.window(windowID, edit = True, widthHeight = (600,800))

    def mainBody(self, path, mayaFalse):
        try:
            if pm.rowLayout(self.masterRow, exists=True, query=True):
                print 'yes'
                self.savePath = path
                print self.motionFolders
                print path
                pm.deleteUI(self.masterRow, layout=True)
        except:
            print 'doesnt exist yet'
            self.savePath = path
            print self.motionFolders
            print path

        print(os.listdir(path))
        self.fileList = [i for i in os.listdir(path) if os.path.isfile(os.path.join(path, i))]
        self.masterRow = pm.rowLayout(width=600, nc=5, parent=self.masterCol)
        spacerCol = pm.columnLayout(width=25, parent=self.masterRow)
        col = pm.columnLayout(width=600, parent=self.masterRow)
        mainBox = pm.scrollLayout(horizontalScrollBarThickness=16, verticalScrollBarThickness=16, parent=col, width=500,
                                  height=600)
        self.radColle = pm.radioCollection()
        self.path = path
        # creating entry for each file
        for i in self.fileList:
            if '.ma' in i[-3:]:
                row1 = pm.rowLayout(i, nc=5, width=450, parent=mainBox)
                pm.image(image=str(path + '/' + i).rstrip('.ma') + '.png', height=100, width=100)
                column1 = pm.columnLayout(parent=row1)

                # writing a partial for command
                radioButtonChange = partial(self.fillSceneName, i)
                pm.radioButton(i, label=i, parent=column1, onCommand=radioButtonChange, annotation=path)

                radioSpacer = pm.rowLayout(nc=2)
                pm.text(label='', width=16, align='left', parent=radioSpacer, enable=False)
                pm.text('SER export', label=u'comment コメント', width=150, height=20, align='left', parent=radioSpacer,
                        enable=False)
        # print self.mayaMotionFolder + path

    def folderOpen(self, mayaFalse):
        try:
            os.startfile(self.path)  # opening folder in explorer
        except:
            pm.confirmDialog(title=u'SER シーン管理', message=u'フォルダーを選択してください。')

    def fillSceneName(self, fieldName, mayaFalse):
        pm.textField(self.sceneName, edit=True, text=fieldName)

    def openFile(self, mayaFalse):
        # print(pm.radioButton(pm.radioCollection(self.radColle, sl = True, q = True), q= True, annotation = True) + '/' + pm.radioButton(pm.radioCollection(self.radColle, sl = True, q = True), q= True, label = True))
        pm.openFile(pm.radioButton(pm.radioCollection(self.radColle, sl=True, q=True), q=True,
                                   annotation=True) + '/' + pm.radioButton(
            pm.radioCollection(self.radColle, sl=True, q=True), q=True, label=True), force=True)

    def saveFile(self, mayaFalse):
        if pm.textField(self.sceneName, q=True,
                        text=True) in os.listdir(self.savePath):  # check if the text field option is the same as the current scene file
            if pm.confirmDialog(title=u'SER シーン管理', message=u'上書きしますか?', button=[u'はい', u'いいえ'],
                                defaultButton=u'はい',
                                cancelButton=u'いいえ', dismissString=u'いいえ'):
                print 'overwrite and save'
                '''
                pm.saveFile()  # saving before exporting
                self.saveImageCreate(False)
                self.mainBody(self.path, False)
                pm.confirmDialog(message=u'保存しました！', title=u'Prism Scene Manager')
                '''

        else:
            print pm.textField(self.sceneName, q=True,
                               text=True)
            print 'save new file'
            '''
            pm.saveAs(self.savePath + '/' + pm.textField(self.sceneName, q=True, text=True),
                      type='mayaAscii')  # saving before exporting
            pm.saveFile()  # save?
            self.saveImageCreate(False)
            self.mainBody(self.path, False)  # call mainBody once more
            pm.confirmDialog(message=u'保存しました！', title=u'Prism Scene Manager')
            '''

    def comment(self, mayaFalse):
        pm.promptDialog(title='Prism Scene Manager', message=u'コメントを書いてください')

    def saveImageCreate(self, mayaFalse):
        pm.playblast(completeFilename=str(pm.sceneName()).rstrip('.ma') + '.png', format='image', compression='png',
                     frame=[pm.currentTime()], forceOverwrite=True, viewer=False, width=100, height=100,
                     showOrnaments=False, p=100, os=True)
        # self.saveFileName = cmds.file(save = True) #saving before exporting

    def placeHolder(self, butt='test'):
        pm.confirmDialog(title='Prism Scene Manager', message=u'まだ実装されていません。 TEST ONLY')

    def fun(self, tex):  # nothing
        print(self.mayaMotionFolder + self.path + '/' + pm.radioButton(
            pm.radioCollection(self.radColle, sl=True, q=True), q=True, label=True))

    def referenceButton(self, mayaFalse):
        if not pm.textField(self.sceneName, q=True, text=True):
            pm.confirmDialog(title=u'SER シーン管理', message=u'シーンを選択してください。')

        else:
            if pm.textField(self.refNamespace, q=True, text=True):  # if namespace is present
                pm.createReference(pm.radioButton(pm.radioCollection(self.radColle, sl=True, q=True), q=True,
                                                  annotation=True) + '/' + pm.radioButton(
                    pm.radioCollection(self.radColle, sl=True, q=True), q=True, label=True),
                                   namespace=pm.textField(self.refNamespace, q=True, text=True))
            else:
                pm.createReference(pm.radioButton(pm.radioCollection(self.radColle, sl=True, q=True), q=True,
                                                  annotation=True) + '/' + pm.radioButton(
                    pm.radioCollection(self.radColle, sl=True, q=True), q=True, label=True), namespace=':')