# encoding: utf-8
##############################################################################################################################
#
#    Adv Skeleton -> Unity Exporter
#    Author: Chew
#
#
#    Rig and animation exporter
#
#
##############################################################################################################################
import pymel.core as pm
import maya.mel as mel
import maya.OpenMayaAnim as animAPI
import maya.OpenMaya as om



class ExporterWindow(object):

    def __init__(self):
        self.fileName = pm.sceneName().split('/')[-1]
        pass

    def UI_exporter(self, *mayaFalse):
        #setting basic UI height and width
        winWidth = 500
        winHeight = 300

        # checking for duplicate windows
        windowID = 'AdvSkeExporter'
        if pm.window(windowID, exists=True):
            pm.deleteUI(windowID)
        #re-adjusting UI if UI is not correct
        if pm.windowPref('AdvSkeExporter', q=True, height = True) != winHeight or pm.windowPref('AdvSkeExporter', q=True, width = True) != winWidth:
            pm.windowPref('AdvSkeExporter', remove=True)

        # creating window
        pm.window(windowID, title=u'Prism Exporter | Ver 2018 / 06 / 06', widthHeight=(winWidth, winHeight))

        rigExportFrame = pm.frameLayout(u'出力', width=500, nch = 10, labelIndent = 20)
        nameFormLayout = pm.formLayout('nameForm', parent = rigExportFrame, nch = 30, width = 500, height = 500, numberOfDivisions = 100)

        self.exportPathText = pm.text(label = u'出力先：' , parent = nameFormLayout, align = 'right', width = 50)
        self.exportPathField = pm.textField('exportPath', placeholderText = u'export path', width = 370)
        dirButton = pm.button(label='', width=20, height=20,
                              command= self.dirChange)
        pm.formLayout(nameFormLayout, edit=True, attachForm = [(self.exportPathText, 'top', 40.5), (self.exportPathText, 'left', 40),#all text have an offset of 3 from top
                                                            (self.exportPathField, 'top', 37.5),
                                                            (self.exportPathField, 'left', 100),
                                                            (dirButton, 'top', 37.5),
                                                            (dirButton, 'left', 475)])

        self.fbxNameText = pm.text(label = u'ファイル名：', parent = nameFormLayout, align = 'right', width = 50)
        self.fbxNameField = pm.textField('fbxName', placeholderText = u'file name', width = 370)
        pm.formLayout(nameFormLayout, edit=True, attachForm = [(self.fbxNameText, 'top', 68), (self.fbxNameText, 'left', 40),
                                                             (self.fbxNameField, 'top', 65),
                                                             (self.fbxNameField, 'left', 100)])

        self.exportOptionGrp = pm.radioButtonGrp('expRadioGrp', numberOfRadioButtons = 2, parent = nameFormLayout,
                                            label1 = u'リグ',
                                            label2 = u'モーション',
                                            width = 300,
                                            label = u'出力設定：',
                                            columnAlign = [1, 'right'],
                                            columnWidth = [(1, 90), (2, 100), (3, 100)],
                                            columnAttach = [(2, 'left', 15)])
        pm.formLayout(nameFormLayout, edit=True, attachForm = [(self.exportOptionGrp, 'top', 100), (self.exportOptionGrp, 'left', 0)])

        self.expButton = pm.button(label = u'出力', parent = nameFormLayout, command = self.exportButton, width = 250)
        pm.formLayout(nameFormLayout, edit=True, attachForm=[(self.expButton, 'top', 200), (self.expButton, 'left', 100)])

        self.projectList()
        self.projListUI = pm.optionMenu(numberOfItems = len(self.prj_data), changeCommand = self.projectChange)
        for i in self.prj_data:
            pm.menuItem(i.split()[0], label = i.split()[0], parent = self.projListUI, annotation = i.split()[1].replace('\\', '/'))
            #pm.optionMenu(self.projListUI, edit = True, visibleChangeCommand = partial(self.projectChange, i.split()[1]))

        prjText = pm.text(label = u'案件：', align = 'right', parent = nameFormLayout, width = 50)
        pm.formLayout(nameFormLayout, edit=True,
                      attachForm=[(self.projListUI, 'top', 10), (self.projListUI, 'left', 99), (prjText, 'top', 13), (prjText, 'left', 40)])

        pm.showWindow()

    def exportButton(self, mayaFalse):
        if pm.radioButtonGrp(self.exportOptionGrp, q=True, select=True) == 1:
            #print 'rig'
            self.exporter_rig()
        elif pm.radioButtonGrp(self.exportOptionGrp, q=True, select=True) == 2:
            #print 'anim'
            self.exporter_anim()
        elif pm.radioButtonGrp(self.exportOptionGrp, q=True, select=True) == 0:
            pm.confirmDialog(title = u'Prism 出力ツール', message = u'種類を選んで下さい \n Please select rig or motion')

    def exporter_rig(self):
        # exporting model
        pm.select(pm.ls('Geometry', type='transform')[0], pm.ls('DeformationSystem', type='transform')[0])#selecting the stuff to export
        mel.eval('FBXExportSkins -v true;FBXExportSkins -q;')#setting options
        mel.eval('FBXExport -f "%s/%s.fbx" -s;' %(pm.textField(self.exportPathField, q = True, text = True).replace('\\', '/'), pm.textField(self.fbxNameField, q = True, text = True)))#exporting


    def exporter_anim(self):
        #exporting animation
        pm.renameFile(pm.textField(self.fbxNameField, q = True, text = True) + '.ma')#changing name
        pm.select(pm.ls('Root_M', type='joint')[0])
        #pm.select(pm.listRelatives(pm.ls('Root_M', type='joint')[0], ad=True, type='joint'), add=True)
        mel.eval('FBXExportBakeComplexAnimation -v true;FBXExportBakeComplexAnimation -q;')
        mel.eval('FBXExportAnimationOnly -v true;FBXExportAnimationOnly -q;')
        mel.eval('FBXExportUseSceneName -v true; FBXExportUseSceneName -q;')
        mel.eval('FBXExport -f "%s/%s.fbx" -s;' %(pm.textField(self.exportPathField, q = True, text = True).replace('\\', '/'), pm.textField(self.fbxNameField, q = True, text = True)))
        pm.renameFile(self.fileName + '.ma')


    def projectList(self):
        prj_read = open('//p.sv/Tool/PrismTools/ref/exporter_ref.txt', mode = 'r')
        self.prj_data = []
        for i in prj_read:
            self.prj_data.append(i)

    def projectChange(self, selection):
        print pm.menuItem(selection, q = True, annotation=True)
        pm.textField(self.exportPathField, edit = True, text=pm.menuItem(selection, q = True, annotation=True))

    def dirChange(self, mayaFalse):
        pm.fileDialog2(ds=2, cap='search for folder', fm=2, dir = pm.textField(self.exportPathField, q=True, text=True))