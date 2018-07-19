# encoding: utf-8
'''
########################################################################################################################
  NAVY Tools Window
  NAVY ツール窓口

  担当者：チュー
  2018/07/19



An overall window for all tools written for NAVY in case the code to launch them gets lost
NAVYツールスの総合窓口



########################################################################################################################
'''

# importing global modules
import maya.cmds as cmds
import pymel.core as pm
import maya.OpenMayaAnim as animAPI

import NAVY_Weapon_Rig
import xyz_delete
import HIK_Mirror
reload(NAVY_Weapon_Rig)
reload(xyz_delete)
reload(HIK_Mirror)

# window code
def NAVYTools_Window():
    # checking for duplicate windows
    windowID = 'localGlobalWindow'
    if pm.window(windowID, exists=True):
        pm.deleteUI(windowID)
        pm.windowPref('localGlobalWindow', remove=True)

    # creating window
    pm.window(windowID, title='NAVY Tools 1.0 | 2018/05/25', widthHeight=(460, 200))
    col = pm.columnLayout('columnLayout01', width=400)
    commonToolsFrame = pm.frameLayout(label=u'共通ツールス', labelIndent=5, marginHeight=5, parent=col, nch=5)
    pm.rowLayout('row1', nc=5, width=450)
    # buttons for first row
    pm.button('NAVY rig', label=u'NAVY 武器リグ', width=150, height=20, backgroundColor=(0.6, 0.6, 0.6), parent='row1',
              command='export = NAVY_Tools.NAVY_Weapon_Rig.rigUI()')
    pm.button('NAVY xyz', label=u'XYZ 消す', width=150, height=20, backgroundColor=(0.6, 0.6, 0.6), parent='row1',
              command=xyz_delete.xyzDel)


    # buttons for 2nd row
    modelFrame = pm.frameLayout(label=u'反転', labelIndent=5, width=450, marginHeight=5, parent=col)
    pm.rowLayout('row2', nc=5, width=450)
    pm.button('NAVY mirror', label=u'全身反転', width=150, height=20, backgroundColor=(0.6, 0.6, 0.6), parent='row2',
              command=HIK_Mirror.HIK_mirror)
    pm.button('NAVY partial mirror', label=u'部分反転', width=150, height=20, backgroundColor=(0.6, 0.6, 0.6), parent='row2',
              command=HIK_Mirror.HIK_partial_mirror)

    '''
    animFrame = pm.frameLayout(label=u'モーションツールス', labelIndent=5, width=450, marginHeight=5, parent=col)
    pm.rowLayout('row3', nc=5, width=450)
    pm.button('SER whipmake', label=u'SER 鞭リグ作る', width=150, height=20, backgroundColor=(0.6, 0.6, 0.6), parent='row3',
              command='whip = SERTools_001.whipMake_001.whipMake()')
    pm.button('SER fingerMirror_r', label=u'SER 指 右→左', width=75, height=20, backgroundColor=(0.6, 0.6, 0.6),
              parent='row3', command=FingerCopyPasta.rightFingerToLeft)
    pm.button('SER fingerMirror_l', label=u'SER 指 左→右', width=75, height=20, backgroundColor=(0.6, 0.6, 0.6),
              parent='row3', command=FingerCopyPasta.leftFingerToRight)
    pm.button('SER selectAll', label=u'SER select all', width=150, height=20, backgroundColor=(0.6, 0.6, 0.6),
              parent='row3',
              command="import pymel.core as pm\npm.select('Character1_Ctrl_HeadEffector', 'Character1_Ctrl_RightShoulderEffector', 'Character1_Ctrl_LeftShoulderEffector', 'Character1_Ctrl_RightElbowEffector', 'Character1_Ctrl_LeftElbowEffector', 'Character1_Ctrl_RightKneeEffector', 'Character1_Ctrl_LeftKneeEffector', 'Character1_Ctrl_RightHipEffector', 'Character1_Ctrl_LeftHipEffector', 'Character1_Ctrl_ChestOriginEffector', 'Character1_Ctrl_ChestEndEffector', 'Character1_Ctrl_HipsEffector', 'Character1_Ctrl_Spine2', 'Character1_Ctrl_Spine1', 'Character1_Ctrl_Spine', 'Character1_Ctrl_RightUpLeg', 'Character1_Ctrl_RightLeg', 'Character1_Ctrl_LeftUpLeg', 'Character1_Ctrl_LeftLeg', 'Character1_Ctrl_RightShoulder', 'Character1_Ctrl_LeftShoulder', 'Character1_Ctrl_RightArm', 'Character1_Ctrl_RightForeArm', 'Character1_Ctrl_LeftArm', 'Character1_Ctrl_LeftForeArm', 'Character1_Ctrl_Neck', 'Character1_Ctrl_RightHandPinkyEffector', 'Character1_Ctrl_RightHandRingEffector', 'Character1_Ctrl_RightHandMiddleEffector', 'Character1_Ctrl_RightHandIndexEffector', 'Character1_Ctrl_RightHandThumbEffector', 'Character1_Ctrl_RightWristEffector', 'Character1_Ctrl_RightHandPinky3', 'Character1_Ctrl_RightHandPinky2', 'Character1_Ctrl_RightHandPinky1', 'Character1_Ctrl_RightHandRing3', 'Character1_Ctrl_RightHandRing2', 'Character1_Ctrl_RightHandRing1', 'Character1_Ctrl_RightHandMiddle3', 'Character1_Ctrl_RightHandMiddle2', 'Character1_Ctrl_RightHandMiddle1', 'Character1_Ctrl_RightHandIndex3', 'Character1_Ctrl_RightHandIndex2', 'Character1_Ctrl_RightHandIndex1', 'Character1_Ctrl_RightHandThumb3', 'Character1_Ctrl_RightHandThumb2', 'Character1_Ctrl_RightHandThumb1', 'Character1_Ctrl_RightHand', 'Character1_Ctrl_LeftHandPinkyEffector', 'Character1_Ctrl_LeftHandRingEffector', 'Character1_Ctrl_LeftHandMiddleEffector', 'Character1_Ctrl_LeftHandIndexEffector', 'Character1_Ctrl_LeftHandThumbEffector', 'Character1_Ctrl_LeftWristEffector', 'Character1_Ctrl_LeftHandPinky3', 'Character1_Ctrl_LeftHandPinky2', 'Character1_Ctrl_LeftHandPinky1', 'Character1_Ctrl_LeftHandRing3', 'Character1_Ctrl_LeftHandRing2', 'Character1_Ctrl_LeftHandRing1', 'Character1_Ctrl_LeftHandMiddle3', 'Character1_Ctrl_LeftHandMiddle2', 'Character1_Ctrl_LeftHandMiddle1', 'Character1_Ctrl_LeftHandIndex3', 'Character1_Ctrl_LeftHandIndex2', 'Character1_Ctrl_LeftHandIndex1', 'Character1_Ctrl_LeftHandThumb3', 'Character1_Ctrl_LeftHandThumb2', 'Character1_Ctrl_LeftHandThumb1', 'Character1_Ctrl_LeftHand', 'Character1_Ctrl_RightFootIndexEffector', 'Character1_Ctrl_RightAnkleEffector', 'Character1_Ctrl_RightFootIndex1', 'Character1_Ctrl_RightFoot', 'Character1_Ctrl_LeftFootIndexEffector', 'Character1_Ctrl_LeftAnkleEffector', 'Character1_Ctrl_LeftFootIndex1', 'Character1_Ctrl_LeftFoot')\npm.select('Helper_Weapon1', 'x', 'y', 'z', add = True)")
    pm.rowLayout('row4', nc=5, width=450, parent=animFrame)
    pm.button('SER WeaponRig', label=u'SER 武器リグ', width=150, height=20, backgroundColor=(0.6, 0.6, 0.6), parent='row4',
              command=Weapon_Rig.rigUI)
    pm.button('SER eyeRig', label=u'SER チェックフォルダーに出す', width=150, height=20, backgroundColor=(0.6, 0.6, 0.6),
              parent='row4', command=ishiiCheck.ishiiCheckFunc)

    # pm.button( 'SER ishiiCheck', label = u'SER 石井チェック', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row3', command = 'constr = SERTools_001.ishiiCheck.ishiiCheckFunc()')
    # pm.button( 'Wrist gbl to loc', label = 'Remove: Left hand Global controller', width = 200, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'wristTranslateControllers', command = 'ChewTools.GlobalLocalSwitch2.L_global_to_local()')

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
    pm.window(windowID, edit=True, widthHeight=(455, 200))