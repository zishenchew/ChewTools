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

import Exporter_001
import whipMake_001



#window code
def localGlobalWindow():
	#checking for duplicate windows
	windowID = 'localGlobalWindow'
	if cmds.window(windowID, exists = True):
		cmds.deleteUI(windowID)
		cmds.windowPref( 'localGlobalWindow', remove=True )
	
	#creating window
	cmds.window(windowID, title = 'SER Tools 1.0 | 2018/02/13', widthHeight = (300,60))
	cmds.columnLayout( 'columnLayout01' )
	cmds.rowLayout( 'row1', nc = 5 )
	
	
	#buttons for first row
	cmds.button( 'SER export', label = 'SER 出力', width = 160, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row1', command = 'export = Exporter_001.main()')
	#cmds.button( 'SER whipmake', label = 'SER 鞭リッグ作る', width = 200, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row1', command = 'ChewTools.GlobalLocalSwitch2.global_to_local()')
	'''
	#buttons for 2nd row
	cmds.rowLayout( 'wristTranslateControllers', nc = 2, parent = 'columnLayout01' )
	cmds.button( 'Wrist loc to gbl', label = 'Left hand Global controller', width = 160, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'wristTranslateControllers', command = 'ChewTools.GlobalLocalSwitch2.L_local_to_global()')
	cmds.button( 'Wrist gbl to loc', label = 'Remove: Left hand Global controller', width = 200, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'wristTranslateControllers', command = 'ChewTools.GlobalLocalSwitch2.L_global_to_local()')
	
	cmds.rowLayout('L_Hand_to_Weapon_Row', nc = 2, parent = 'columnLayout01' )
	cmds.button( 'L_Hand_to_Weapon_Row', label = '左手を武器にbindする', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'L_Hand_to_Weapon_Row', command = 'ChewTools.LeftHand_to_Weapon.Weapon_Bind()')
	
	
	
	cmds.rowLayout( 'separator', nc = 2, parent = 'columnLayout01' )
	cmds.separator(height = 10, style = 'in')
	#buttons for 3rd row, Mocap Transfer
	cmds.rowLayout( 'mocapTransfer1', nc = 4, parent = 'columnLayout01' )
	cmds.button( 'bone_import', label = 'Bone Import', width = 100, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'mocapTransfer1', command = 'ChewTools.importBones()' )
	cmds.button( 'bocap_import', label = 'Mocap Import', width = 100, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'mocapTransfer1', command = 'ChewTools.importMocap()' )
	
	
	#buttons for 4th row, Mocap Transfer
	cmds.rowLayout( 'mocapTransfer2', nc = 4, parent = 'columnLayout01' )
	cmds.button( 'Mocap Zero ', label = 'Zero out Mocap', width = 100, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'mocapTransfer2', command = 'ChewTools.mocapZeroOut()' )
	cmds.button( 'mocap Transfer', label = 'Mocap Copy', width = 100, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'mocapTransfer2', command = 'ChewTools.mocapButton()' )
	'''
	cmds.showWindow()
	cmds.window(windowID, edit = True, widthHeight = (400,150))