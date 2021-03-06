# encoding: utf-8
'''
########################################################################################################################
  SER Weapon Rig
  SER 武器リグ

  担当者：チュー
  2018/05/14

Creates a weapon rig that can be manipulated between left hand, right hand and neither of those two.

仕様：
・HumanIKの状態で、右左アタッチできます。
・グローバル、ローカルを切り替えられます。
・リグ作る時に、ピボット位置調整できます。
・出力時に、出力ツールは自動ベークします。

########################################################################################################################
'''
import pymel.core as pm
import maya.OpenMayaAnim as animAPI
import maya.mel as mel


# one handed sword
def locatorMake(mayaFalse):
    # create locators

    pivotLoc = mel.eval(
        'curve -d 1 -p 0 0 1 -p 0 0 -1 -p -1 0 0 -p 0 0 -1 -p 1 0 0 -k 0 -k 1 -k 2 -k 3 -k 4 -n "Locator_Pivot" ;')
    pm.setAttr(pivotLoc + '.rotateAxisX',
               90)  # rotating the controller without affecting its axes to accurate depict its orientation
    pm.setAttr(pivotLoc + '.rotateAxisY', 90)
    pm.scale(pivotLoc, [2, 2, 3])


def rigMake(mayaFalse):
    # check
    if pm.ls('Constraint_Weapon_Global'):  # first, perform a check to see if weapons have already been rigged
        pm.confirmDialog(title=u'NAVY 武器リグ', message=u'武器既にコンストレインされました。')
        return

    # rest of rig start
    weapJoint = pm.listRelatives(pm.listRelatives('Weapon', ad=True, type='mesh')[0], p=True)[0]
    pm.xform('R_AttachmentTransform', t=pm.xform('WeaponTransform_R', q=True, t=True),
             ro=pm.xform('WeaponTransform_R', q=True, ro=True))#matching transform values of arm and weapon
    R_Constr = pm.parentConstraint(pm.ls('*R_AttachmentMotion')[0], 'WeaponMotion_R',
                                   name='Constraint_Weapon_Global')  # parent constraint to right hand
    pm.parentConstraint(pm.ls('*L_AttachmentMotion')[0], 'WeaponMotion_R')  # parent constraint to left hand
    pm.setAttr('Constraint_Weapon_Global.%s' % pm.listAttr('Constraint_Weapon_Global', k=True)[-1], 0)

    pm.setKeyframe('WeaponMotion_R')
    pm.setKeyframe('WeaponMotion_R', v=1, at='blendWeaponGlobal', itt='auto', ott='step')
    pm.setKeyframe('Constraint_Weapon_Global', v=1, at=pm.listAttr('Constraint_Weapon_Global', k=True)[-2], itt='auto',
                   ott='step')  # sets RH constraint to 1
    pm.setKeyframe('Constraint_Weapon_Global', v=0, at=pm.listAttr('Constraint_Weapon_Global', k=True)[-1], itt='auto',
                   ott='step')  # sets LH constraint to 0


def migi(mayaFalse):
    pm.setKeyframe('WeaponMotion_R', v=1, at='blendWeaponGlobal', itt='auto',
                   ott='step')  # sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global', v=1, at=pm.listAttr('Constraint_Weapon_Global', k=True)[-2],
                   ott='step')  # sets RH constraint to 1
    pm.setKeyframe('Constraint_Weapon_Global', v=0, at=pm.listAttr('Constraint_Weapon_Global', k=True)[-1],
                   ott='step')  # sets LH constraint to 0
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport


def hidari(mayaFalse):
    pm.setKeyframe('WeaponMotion_R', v=1, at='blendWeaponGlobal', itt='auto',
                   ott='step')  # sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global', v=0, at=pm.listAttr('Constraint_Weapon_Global', k=True)[-2],
                   ott='step')  # sets RH constraint to 0
    pm.setKeyframe('Constraint_Weapon_Global', v=1, at=pm.listAttr('Constraint_Weapon_Global', k=True)[-1],
                   ott='step')  # sets LH constraint to 1
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport


def weaponGlobal_single(mayaFalse):
    pm.setKeyframe('WeaponMotion_R', at=['translate', 'rotate'])
    pm.setKeyframe('WeaponMotion_R', v=0, at='blendWeaponGlobal', itt='auto',
                   ott='step')  # sets the blend parent of the controller transform to 0
    pm.setKeyframe('Constraint_Weapon_Global', v=0, at=[pm.listAttr('Constraint_Weapon_Global', k=True)[-2],
                                                        pm.listAttr('Constraint_Weapon_Global', k=True)[-1]],
                   itt='auto', ott='step')  # sets both left and right hand constraints to 0
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport


###############################################################
# from this part on is two sword support
###############################################################
def locatorMake_R(mayaFalse):
    # create two locators
    pivotLocR = mel.eval(
        'curve -d 1 -p 0 0 1 -p 0 0 -1 -p -1 0 0 -p 0 0 -1 -p 1 0 0 -k 0 -k 1 -k 2 -k 3 -k 4 -n "Locator_Pivot_R" ;')
    pm.setAttr(pivotLocR + '.rotateAxisX',
               90)  # rotating the controller without affecting its axes to accurate depict its orientation
    pm.setAttr(pivotLocR + '.rotateAxisY', 90)
    pm.scale(pivotLocR, [2, 2, 3])


def locatorMake_L(mayaFalse):
    pivotLocL = mel.eval(
        'curve -d 1 -p 0 0 1 -p 0 0 -1 -p -1 0 0 -p 0 0 -1 -p 1 0 0 -k 0 -k 1 -k 2 -k 3 -k 4 -n "Locator_Pivot_L" ;')
    pm.setAttr(pivotLocL + '.rotateAxisX',
               90)  # rotating the controller without affecting its axes to accurate depict its orientation
    pm.setAttr(pivotLocL + '.rotateAxisY', 90)
    pm.scale(pivotLocL, [2, 2, 3])


def rigMake_R(mayaFalse):
    # check
    if pm.ls('Constraint_Weapon_Global_R'):  # first, perform a check to see if weapons have already been rigged
        pm.confirmDialog(title=u'NAVY 武器リグ', message=u'武器既にコンストレインされました。')
        return
    try:
        contr1 = pm.ls(sl=True)[0]
        pm.xform('R_AttachmentTransform', t=pm.xform(pm.listRelatives(contr1, p=True), q=True, t=True),
                 ro=pm.xform(pm.listRelatives(contr1, p=True), q=True, ro=True))#matching transform values of arm and weapon
        R_Constr = pm.parentConstraint(pm.ls('*R_AttachmentMotion')[0], contr1,
                                       name='Constraint_Weapon_Global_R')  # parent constraint to right hand
        L_Constr = pm.parentConstraint(pm.ls('*L_AttachmentMotion')[0], contr1)  # parent constraint to left hand
        pm.setAttr('Constraint_Weapon_Global_R.%s' % pm.listAttr('Constraint_Weapon_Global_R', k=True)[-1], 0)

        pm.setKeyframe(contr1)
        pm.setKeyframe(contr1, v=1, at='blendWeaponGlobalR', itt='auto', ott='step')
        pm.setKeyframe('Constraint_Weapon_Global_R', v=1,
                       at=pm.listAttr('Constraint_Weapon_Global_R', k=True)[-2])  # sets RH constraint to 1
        pm.setKeyframe('Constraint_Weapon_Global_R', v=0,
                       at=pm.listAttr('Constraint_Weapon_Global_R', k=True)[-1])  # sets LH constraint to 0
    except:
        pm.confirmDialog(title=u'NAVY 武器リグ', message=u'WeaponMotion_R　を先に選択してください')


def rigMake_L(mayaFalse):
    # check
    if pm.ls('Constraint_Weapon_Global_L'):  # first, perform a check to see if weapons have already been rigged
        pm.confirmDialog(title=u'NAVY 武器リグ', message=u'武器既にコンストレインされました。')
        return
    try:
        contr1 = pm.ls(sl=True)[0]
        pm.xform('L_AttachmentTransform', t=pm.xform(pm.listRelatives(contr1, p=True), q=True, t=True),
                 ro=pm.xform(pm.listRelatives(contr1, p=True), q=True, ro=True))#matching transform values of arm and weapon
        L_Constr = pm.parentConstraint(pm.ls('*L_AttachmentMotion')[0], contr1,
                                       name='Constraint_Weapon_Global_L')  # parent constraint to right hand
        R_Constr = pm.parentConstraint(pm.ls('*R_AttachmentMotion')[0], contr1)  # parent constraint to left hand
        pm.setAttr('Constraint_Weapon_Global_L.%s' % pm.listAttr('Constraint_Weapon_Global_L', k=True)[-1], 0)

        pm.setKeyframe(contr1)
        pm.setKeyframe(contr1, v=1, at='blendWeaponGlobalL', itt='auto', ott='step')
        pm.setKeyframe('Constraint_Weapon_Global_L', v=1,
                       at=pm.listAttr('Constraint_Weapon_Global_L', k=True)[-2])  # sets LH constraint to 1
        pm.setKeyframe('Constraint_Weapon_Global_L', v=0,
                       at=pm.listAttr('Constraint_Weapon_Global_L', k=True)[-1])  # sets RH constraint to 0
    except:
        pm.confirmDialog(title=u'NAVY 武器リグ', message=u'WeaponMotion_L　を先に選択してください')


def right_global(mayaFalse=False):
    pm.setKeyframe(pm.listConnections('Constraint_Weapon_Global_R', type='transform')[0], at=['translate',
                                                                                              'rotate'])  # using list connections in case of weird namespaces or naming conventions
    pm.setKeyframe(pm.listConnections('Constraint_Weapon_Global_R', type='transform')[0], v=0, at='blendWeaponGlobalR',
                   itt='auto', ott='step')  # sets the blend parent of the controller transform to 0
    pm.setKeyframe('Constraint_Weapon_Global_R', v=0, at=[pm.listAttr('Constraint_Weapon_Global_R', k=True)[-2],
                                                          pm.listAttr('Constraint_Weapon_Global_R', k=True)[-1]],
                   itt='auto', ott='step')  # sets both left and right hand constraints to 0
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport
    pass


def right_right(mayaFalse=False):
    pm.setKeyframe(pm.listConnections('Constraint_Weapon_Global_R', type='transform')[0], v=1, at='blendWeaponGlobalR',
                   itt='auto', ott='step')  # sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global_R', v=1, at=pm.listAttr('Constraint_Weapon_Global_R', k=True)[-2],
                   ott='step')  # sets RH constraint to 1
    pm.setKeyframe('Constraint_Weapon_Global_R', v=0, at=pm.listAttr('Constraint_Weapon_Global_R', k=True)[-1],
                   ott='step')  # sets LH constraint to 0
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport
    pass


def right_left(mayaFalse=False):
    pm.setKeyframe(pm.listConnections('Constraint_Weapon_Global_R', type='transform')[0], v=1, at='blendWeaponGlobalR',
                   itt='auto', ott='step')  # sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global_R', v=0, at=pm.listAttr('Constraint_Weapon_Global_R', k=True)[-2],
                   ott='step')  # sets RH constraint to 0
    pm.setKeyframe('Constraint_Weapon_Global_R', v=1, at=pm.listAttr('Constraint_Weapon_Global_R', k=True)[-1],
                   ott='step')  # sets LH constraint to 1
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport
    pass


def left_global(mayaFalse=False):
    pm.setKeyframe(pm.listConnections('Constraint_Weapon_Global_L', type='transform')[0], at=['translate', 'rotate'])
    pm.setKeyframe(pm.listConnections('Constraint_Weapon_Global_L', type='transform')[0], v=0, at='blendWeaponGlobalL',
                   itt='auto', ott='step')  # sets the blend parent of the controller transform to 0
    pm.setKeyframe('Constraint_Weapon_Global_L', v=0, at=[pm.listAttr('Constraint_Weapon_Global_R', k=True)[-2],
                                                          pm.listAttr('Constraint_Weapon_Global_R', k=True)[-1]],
                   itt='auto', ott='step')  # sets both left and right hand constraints to 0
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport
    pass


def left_right(mayaFalse=False):
    pm.setKeyframe(pm.listConnections('Constraint_Weapon_Global_L', type='transform')[0], v=1, at='blendWeaponGlobalL',
                   itt='auto', ott='step')  # sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global_L', v=1, at=pm.listAttr('Constraint_Weapon_Global_L', k=True)[-1],
                   ott='step')  # sets RH constraint to 1
    pm.setKeyframe('Constraint_Weapon_Global_L', v=0, at=pm.listAttr('Constraint_Weapon_Global_L', k=True)[-2],
                   ott='step')  # sets LH constraint to 0
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport
    pass


def left_left(mayaFalse=False):
    pm.setKeyframe(pm.listConnections('Constraint_Weapon_Global_L', type='transform')[0], v=1, at='blendWeaponGlobalL',
                   itt='auto', ott='step')  # sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global_L', v=0, at=pm.listAttr('Constraint_Weapon_Global_L', k=True)[-1],
                   ott='step')  # sets RH constraint to 0
    pm.setKeyframe('Constraint_Weapon_Global_L', v=1, at=pm.listAttr('Constraint_Weapon_Global_L', k=True)[-2],
                   ott='step')  # sets LH constraint to 1
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport
    pass


###############################################################
# end of 2 swords
###############################################################

###############################################################
# start of 2 handed weapons
###############################################################

def locatorMake_2hand(mayaFalse):
    # create locators
    pivotLoc = mel.eval(
        'curve -d 1 -p 0 0 1 -p 0 0 -1 -p -1 0 0 -p 0 0 -1 -p 1 0 0 -k 0 -k 1 -k 2 -k 3 -k 4 -n "Locator_Pivot" ;')
    pm.setAttr(pivotLoc + '.rotateAxisX',
               90)  # rotating the controller without affecting its axes to accurate depict its orientation
    pm.setAttr(pivotLoc + '.rotateAxisY', 90)
    pm.scale(pivotLoc, [2, 2, 3])


def rigMake_2hand(mayaFalse):
    # check
    if pm.ls('Constraint_Weapon_Global'):  # first, perform a check to see if locatorMake() has been performed.
        pm.confirmDialog(title=u'NAVY 武器リグ', message=u'武器既にコンストレインされました。')
        return
    # rest of rig start
    pm.xform('R_AttachmentTransform', t=pm.xform('WeaponTransform_R', q=True, t=True),
             ro=pm.xform('WeaponTransform_R', q=True, ro=True))#matching transform values of arm and weapon
    pm.xform('WeaponMotion_R', ws=True, t=pm.xform('R_AttachmentMotion', q=True, t=True, ws=True),
             ro=pm.xform('R_AttachmentMotion', q=True, ro=True, ws=True))
    controller_RH = pm.circle(name='Controller_Weapon_RightHand', r=7, nr=[0, 1, 0])
    controller_LH = pm.circle(name='Controller_Weapon_LeftHand', r=7, nr=[0, 1, 0])
    pm.parent(controller_RH[0], controller_LH[0], 'WeaponMotion_R')
    pm.xform(controller_RH, ws=True, t=pm.xform('Character1_Ctrl_RightWristEffector', q=True, t=True, ws=True), ro=pm.xform('Character1_Ctrl_RightWristEffector', q=True, ro=True, ws=True), relative=False)
    pm.xform(controller_LH, ws=False, t=[0, 0, -10], ro=[-90,180,0], relative=False)



    #pm.parentConstraint('WeaponMotion_R', 'R_AttachmentMotion', mo=False)
    # pm.delete('Locator_Pivot')#deleting locator pivot after rig controllers have been created.

    # create the extra effectors
    mel.eval(
        'hikCreateAuxEffector Character1_Ctrl_LeftWristEffector; hikCreateAuxEffector Character1_Ctrl_RightWristEffector;')  # creating left and right effectors

    pm.parentConstraint(controller_RH[0], 'Character1_Ctrl_RightWristEffectorAux1', mo=False)
    pm.parentConstraint(controller_LH[0], 'Character1_Ctrl_LeftWristEffectorAux1', mo=False)

    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1')
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v=1, at='blendParent1', itt='auto', ott='step')
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v=1, at='reachTranslation', itt='auto', ott='step')
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v=1, at='reachRotation', itt='auto', ott='step')
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1')
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v=1, at='blendParent1', itt='auto', ott='step')
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v=0, at='reachTranslation', itt='auto', ott='step')
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v=0, at='reachRotation', itt='auto', ott='step')

def auxOffRight(mayaFalse):
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v=0, at='rt', itt='auto', ott='step')
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v=0, at='rr', itt='auto', ott='step')
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport


def auxOffLeft(mayaFalse):
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v=0, at='rt', itt='auto', ott='step')
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v=0, at='rr', itt='auto', ott='step')
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport


def auxOnRight(mayaFalse):
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v=1, at='rt', itt='auto', ott='step')
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v=1, at='rr', itt='auto', ott='step')
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport


def auxOnLeft(mayaFalse):
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v=1, at='rt', itt='auto', ott='step')
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v=1, at='rr', itt='auto', ott='step')
    pm.currentTime(pm.currentTime(), update=True)  # updating the viewport

###############################################################
# end of 2 handed weapons
###############################################################


def foo(mayaFalse=False):
    pm.confirmDialog(title='SER 武器切り替え', message='%i \n%i' % (
    pm.intField('fromFrame', q=True, value=True), pm.intField('toFrame', q=True, value=True)))


def rigUI(mayaFalse=False):
    windowID = 'weaponRig'  # checking if window already exists
    if pm.window(windowID, exists=True):
        pm.deleteUI(windowID)
        pm.windowPref('weaponRig', remove=True)
    pm.window(windowID, title=u'SER 武器RIG')
    masterTab = pm.tabLayout(innerMarginWidth=5, innerMarginHeight=5)

    # rig switching
    rigSwitchcol = pm.columnLayout(u'武器切り替え', width=400, parent=masterTab)
    switchFrame = pm.frameLayout(label=u'片手武器', labelIndent=5, marginHeight=5, parent=rigSwitchcol, nch=5)
    switchRow = pm.rowLayout('switchRow', nc=5, width=600)
    pm.button('global', label=u'→　グローバル', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6), parent=switchRow,
              command=weaponGlobal_single)
    pm.button('righthand', label=u'→　右手', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6), parent=switchRow,
              command=migi)
    pm.button('lefthand', label=u'→　左手', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6), parent=switchRow,
              command=hidari)
    
    switchFrame2 = pm.frameLayout(label=u'二丁武器', labelIndent=5, marginHeight=5, parent=rigSwitchcol, nch=5)
    twosword_1 = pm.rowLayout('test', nc=5, width=600, parent=switchFrame2)
    pm.button('global', label=u'右　→　グローバル', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6), parent=twosword_1,
              command=right_global)
    pm.button('right-right', label=u'右　→　右', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6), parent=twosword_1,
              command=right_right)
    pm.button('right-left', label=u'右　→　左', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6), parent=twosword_1,
              command=right_left)
    twosword_2 = pm.rowLayout('2hand_2', nc=5, width=600, parent=switchFrame2)
    pm.button('left-global', label=u'左　→　グローバル', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6),
              parent=twosword_2, command=left_global)
    pm.button('left-left', label=u'左　→　右', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6), parent=twosword_2,
              command=left_right)
    pm.button('left-right', label=u'左　→　左', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6), parent=twosword_2,
              command=left_left)

    switchFrame3 = pm.frameLayout(label=u'両手武器', labelIndent=5, marginHeight=5, parent=rigSwitchcol, nch=5)

    twohand_3 = pm.rowLayout('switchRow2h_3', nc=5, width=600, parent=switchFrame3)
    pm.text(label=u'Aux ON/OFF', parent=twohand_3, width=100)
    twohand_3a = pm.rowLayout('switchRow2h_3a', nc=5, width=600, parent=switchFrame3)
    pm.text(label=u'', parent=twohand_3a, width=10)
    pm.text(label=u'Aux のキーはタイムラインに見えないので、気を付けてください。', parent=twohand_3a, width=500, align='left')

    twohand_4 = pm.rowLayout('switchRow2h_4', nc=5, width=600, parent=switchFrame3)
    pm.button('lhAuxOff', label=u'右手 → Aux Off', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6),
              parent=twohand_4, command=auxOffRight)
    pm.button('rhAuxOff', label=u'左手 → Aux Off', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6),
              parent=twohand_4, command=auxOffLeft)

    
    twohand_5 = pm.rowLayout('switchRow2h_5', nc=5, width=600, parent=switchFrame3)
    pm.button('lhAuxOn', label=u'右手 → Aux On', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6),
              parent=twohand_5, command=auxOnRight)
    pm.button('rhAuxOn', label=u'左手 → Aux On', width=112.5, height=20, backgroundColor=(0.6, 0.6, 0.6),
              parent=twohand_5, command=auxOnLeft)
    # rig creating
    rigMakeCol = pm.columnLayout(u'リグ作り', width=400, parent=masterTab)
    oneHandFrame = pm.frameLayout(label=u'片手武器リグ作り', labelIndent=5, marginHeight=5, parent=rigMakeCol, nch=5)
    oneHandRow = pm.rowLayout('oneHandRow', nc=5, width=600, parent=oneHandFrame)
    # pm.button( 'locator', label = u'ロケーターを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = oneHandRow, command = locatorMake)
    pm.button('rig', label=u'リグを作る', width=150, height=20, backgroundColor=(0.6, 0.6, 0.6), parent=oneHandRow,
              command=rigMake)

    twoSwordFrame = pm.frameLayout(label=u'二丁武器リグ作り', labelIndent=5, marginHeight=5, parent=rigMakeCol, nch=5)
    # twoSwordRow1 = pm.rowLayout( 'twoSwordRow1', nc = 5, width = 600, parent = twoSwordFrame)
    # pm.button( 'locatorR', label = u'右ロケーターを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twoSwordRow1, command = locatorMake_R)
    # pm.button( 'locatorL', label = u'左ロケーターを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twoSwordRow1, command = locatorMake_L)
    twoSwordRow2 = pm.rowLayout('twoSwordRow2', nc=5, width=600, parent=twoSwordFrame)
    pm.button('rigR', label=u'右リグを作る', width=150, height=20, backgroundColor=(0.6, 0.6, 0.6), parent=twoSwordRow2,
              command=rigMake_R)
    pm.button('rigL', label=u'左リグを作る', width=150, height=20, backgroundColor=(0.6, 0.6, 0.6), parent=twoSwordRow2,
              command=rigMake_L)

    twoHandFrame = pm.frameLayout(label=u'両手武器リグ作り', labelIndent=5, marginHeight=5, parent=rigMakeCol, nch=5)
    twoHandRow = pm.rowLayout('twoHandRow', nc=5, width=600, parent=twoHandFrame)
    #pm.button( 'twohandLocator', label = u'ロケーターを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twoHandRow, command = locatorMake)
    pm.button('twoHandRig', label=u'リグを作る', width=150, height=20, backgroundColor=(0.6, 0.6, 0.6), parent=twoHandRow,
              command=rigMake_2hand)
    pm.showWindow()
    pm.window(windowID, edit=True, widthHeight=(500, 400))