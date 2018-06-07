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
from shutil import copy2


class ExporterWindow(object):

    def __init__(self):
        self.fileName = pm.sceneName().split('/')[-1]
        pass

    def UI_exporter(self):
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
        self.exportPathField = pm.textField('exportPath', placeholderText = u'export path', width = 300)
        pm.formLayout(nameFormLayout, edit=True, attachForm = [(self.exportPathText, 'top', 25.5), (self.exportPathText, 'left', 40),#all text have an offset of 3 from top
                                                             (self.exportPathField, 'top', 22.5),
                                                             (self.exportPathField, 'left', 100)])

        self.fbxNameText = pm.text(label = u'ファイル名：', parent = nameFormLayout, align = 'right', width = 50)
        self.fbxNameField = pm.textField('fbxName', placeholderText = u'file name', width = 300)
        pm.formLayout(nameFormLayout, edit=True, attachForm = [(self.fbxNameText, 'top', 53), (self.fbxNameText, 'left', 40),
                                                             (self.fbxNameField, 'top', 50),
                                                             (self.fbxNameField, 'left', 100)])

        self.exportOptionGrp = pm.radioButtonGrp('expRadioGrp', numberOfRadioButtons = 2, parent = nameFormLayout,
                                            label1 = u'リグ',
                                            label2 = u'モーション',
                                            width = 300,
                                            label = u'出力設定：',
                                            columnAlign = [1, 'right'],
                                            columnWidth = [(1, 90), (2, 100), (3, 100)],
                                            columnAttach = [(2, 'left', 15)])
        pm.formLayout(nameFormLayout, edit=True, attachForm = [(self.exportOptionGrp, 'top', 80), (self.exportOptionGrp, 'left', 0)])

        self.expButton = pm.button(label = u'出力', parent = nameFormLayout, command = self.exportButton, width = 250)
        pm.formLayout(nameFormLayout, edit=True, attachForm=[(self.expButton, 'top', 200), (self.expButton, 'left', 100)])


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



test = ExporterWindow().UI_exporter()
'''
mel.eval('FBXExportAnimationOnly -v true;FBXExportAnimationOnly -q;')
mel.eval('FBXExportUseSceneName -v true; FBXExportUseSceneName -q;')
mel.eval('FBXExport -f "D:/Unity/rollaball/rollaball/Assets/_scenes/PrismChan_ChewTest/%s.fbx" -s;' % fileName)

# exporting model
pm.select(pm.ls('Geometry', type='transform')[0], pm.ls('DeformationSystem', type='transform')[0])
mel.eval('FBXExportSkins -v true;FBXExportSkins -q;')
mel.eval('FBXExport -f "E:/prismchan/ChewTest/PrismChan_Model.fbx" -s;')
'''