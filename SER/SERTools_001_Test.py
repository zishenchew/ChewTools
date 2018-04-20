# encoding: utf-8
'''
########################################################################################################################
  SER Tools Window
  SER ツール窓口
  
  担当者：チュー
  2018/02/13
  


An overall window for all tools written for SER in case the code to launch them gets lost
SERツールスの総合窓口



########################################################################################################################
'''


#importing global modules
import maya.cmds as cmds
import pymel.core as pm
import maya.OpenMayaAnim as animAPI

import Exporter_001Test
import whipMake_001
import AnimPose_001_test
import constraintSwitch
import ishiiCheck

reload(Exporter_001Test)#reloading
reload(whipMake_001)
reload(AnimPose_001_test)
reload(constraintSwitch)
reload(ishiiCheck)

#window code
def SERTools_Window():
    #checking for duplicate windows
    windowID = 'localGlobalWindow'
    if pm.window(windowID, exists = True):
        pm.deleteUI(windowID)
        pm.windowPref( 'localGlobalWindow', remove=True )
    
    #creating window
    pm.window(windowID, title = 'SER Tools 1.0 | 2018/03/023 | DEVELOPMENT VERSION', widthHeight = (460,200))
    col = pm.columnLayout( 'columnLayout01', width = 400)
    commonToolsFrame = pm.frameLayout(label = u'共通ツールス', labelIndent = 5, marginHeight = 5, parent = col, nch = 5)
    pm.rowLayout( 'row1', nc = 5, width = 450)
    #buttons for first row
    pm.button( 'SER export', label = u'SER 出力 Test', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row1', command = 'export = SERTools_001_Test.Exporter_001Test.main()')
    
    #buttons for 2nd row
    modelFrame = pm.frameLayout(label = u'モデルツールス', labelIndent = 5, width = 450, marginHeight = 5, parent = col)
    pm.rowLayout( 'row2', nc = 5, width = 450)
    pm.button( 'SER pose', label = u'SER ポーズテスト', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row2', command = 'poseTest = SERTools_001_Test.AnimPose_001_test.poseTest()')
    
    animFrame = pm.frameLayout(label = u'モーションツールス', labelIndent = 5, width = 450, marginHeight = 5, parent = col)
    pm.rowLayout( 'row3', nc = 5, width = 450)
    pm.button( 'SER whipmake', label = u'SER 鞭リッグ作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row3', command = 'whip = SERTools_001_Test.whipMake_001.whipMake()')
    pm.button( 'SER constraint', label = u'SER コンすトレイン', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row3', command = 'constr = SERTools_001_Test.constraintSwitch.scriptUI()')
    pm.button( 'SER ishiiCheck', label = u'SER 石井チェック', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row3', command = 'constr = SERTools_001_Test.ishiiCheck.ishiiCheckFunc()')
    #pm.button( 'Wrist gbl to loc', label = 'Remove: Left hand Global controller', width = 200, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'wristTranslateControllers', command = 'ChewTools.GlobalLocalSwitch2.L_global_to_local()')
    '''
    pm.rowLayout('L_Hand_to_Weapon_Row', nc = 2, parent = 'columnLayout01' )
    pm.button( 'L_Hand_to_Weapon_Row', label = '左手を武器にbindする', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'L_Hand_to_Weapon_Row', command = 'ChewTools.LeftHand_to_Weapon.Weapon_Bind()')
    
    
    
    pm.rowLayout( 'separator', nc = 2, parent = 'columnLayout01' )
    pm.separator(height = 10, style = 'in')
    #buttons for 3rd row, Mocap Transfer
    pm.rowLayout( 'mocapTransfer1', nc = 4, parent = 'columnLayout01' )
    pm.button( 'bone_import', label = 'Bone Import', width = 100, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'mocapTransfer1', command = 'ChewTools.importBones()' )
    pm.button( 'bocap_import', label = 'Mocap Import', width = 100, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'mocapTransfer1', command = 'ChewTools.importMocap()' )
    
    
    #buttons for 4th row, Mocap Transfer
    pm.rowLayout( 'mocapTransfer2', nc = 4, parent = 'columnLayout01' )
    pm.button( 'Mocap Zero ', label = 'Zero out Mocap', width = 100, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'mocapTransfer2', command = 'ChewTools.mocapZeroOut()' )
    pm.button( 'mocap Transfer', label = 'Mocap Copy', width = 100, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'mocapTransfer2', command = 'ChewTools.mocapButton()' )
    '''
    pm.showWindow()
    pm.window(windowID, edit = True, widthHeight = (455,180))