# encoding: utf-8
##############################################################################################################################
#
#    Prism Tools
#    Author: Chew
#
#
#    Prism Tools
#
#
##############################################################################################################################
import pymel.core as pm
import maya.mel as mel
from functools import partial
import Prism_AdvSkeExporter
reload(Prism_AdvSkeExporter)

#import maya.OpenMayaAnim as animAPI
#import maya.OpenMaya as om
mel.eval('source "//p.sv/Tool/Advanced_Skeleton/AdvancedSkeleton5";')

def PrismTools_UI():
    #PrismTools UI dimension
    winWidth = 250
    winHeight = 500

    # checking for duplicate windows
    windowID = 'PrismTools'
    if pm.window(windowID, exists=True):
        pm.deleteUI(windowID)
    # re-adjusting UI if UI is not correct
    try:
        if pm.windowPref(windowID, q=True, height=True) != winHeight or pm.windowPref(windowID, q=True,
                                                                                              width=True) != winWidth:
            pm.windowPref(windowID, remove=True)
    except:
        pass

    # creating window
    pm.window(windowID, title=u'Prism Tools | Ver 2018 / 06 / 06', widthHeight=(winWidth, winHeight))
    col = pm.columnLayout('MainColumn', width=400)
    # buttons for 2nd row
    AdvSke = pm.frameLayout(label=u'Advanced Skeleton', labelIndent=5, width=450, marginHeight=5, parent=col)
    ASRow = pm.rowLayout('row2', nc=5, width=450, parent = AdvSke)
    pm.text(label = '', width = 5, parent = ASRow)
    AS_button = partial(mel.eval, 'AdvancedSkeleton5')
    pm.iconTextButton(style = 'iconAndTextVertical',
                      image1 = r'\\p.sv\Tool\PrismTools\AdvancedSkeleton5Files\icons\AS5.png',
                      label = 'Adv Skeleton',
                      parent = ASRow,
                      command = AS_button,
                      width = 75)
    picker_button = partial(mel.eval, 'source "//p.sv/Tool/PrismTools/AdvancedSkeleton5Files/Selector/biped.mel"')
    pm.iconTextButton(style='iconAndTextVertical',
                      image1=r'\\p.sv\Tool\PrismTools\AdvancedSkeleton5Files\icons\asBiped.png', label=u'Picker(仮）',
                      parent=ASRow,
                      command = picker_button,
                      width = 50)
    face_button = partial(mel.eval, 'source "//p.sv/Tool/PrismTools/AdvancedSkeleton5Files/Selector/face.mel"')
    pm.iconTextButton(style='iconAndTextVertical',
                      image1=r'\\p.sv\Tool\PrismTools\AdvancedSkeleton5Files\icons\asFace.png', label=u'Picker(仮）',
                      parent=ASRow,
                      command = face_button,
                      width = 50)
    pm.button('Prism Exporter',
              label = u'出力',
              width = 50,
              height = 50,
              backgroundColor=(0.6, 0.6, 0.6),
              parent = ASRow,
              command = Prism_AdvSkeExporter.ExporterWindow().UI_exporter)


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
    '''
    pm.showWindow()