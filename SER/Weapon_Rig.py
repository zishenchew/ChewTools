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

#one handed sword
def locatorMake(mayaFalse):
    #create locators 
    
    pivotLoc = mel.eval('curve -d 1 -p 0 0 1 -p 0 0 -1 -p -1 0 0 -p 0 0 -1 -p 1 0 0 -k 0 -k 1 -k 2 -k 3 -k 4 -n "Locator_Pivot" ;')
    pm.setAttr(pivotLoc + '.rotateAxisX', 90)#rotating the controller without affecting its axes to accurate depict its orientation
    pm.setAttr(pivotLoc + '.rotateAxisY', 90)
    pm.scale(pivotLoc, [2,2,3])
    '''
    pm.xform(pivotLoc, t = (0, 1, 0), ws = True)#offsetting the pivot controller up a little
    constrLoc = mel.eval('curve -d 1 -p 0 0 1 -p 0 0 -1 -p -1 0 0 -p 0 0 -1 -p 1 0 0 -k 0 -k 1 -k 2 -k 3 -k 4 -n "Locator_Constraint" ;')
    pm.setAttr(constrLoc + '.rotateAxisX', 90)#rotating the controller without affecting its axes to accurate depict its orientation
    pm.setAttr(constrLoc + '.rotateAxisY', 90)
    
    pivotLoc = pm.spaceLocator(name = "Locator_Pivot")
    pm.scale(pivotLoc, [2,2,3])
    '''

def rigMake(mayaFalse):
    #check
    if not pm.ls('Locator_Pivot'):#first, perform a check to see if locatorMake() has been performed. 
        pm.confirmDialog(title = u'SER 武器リグ', message = u'先ず、ピボット設定をしてください。')
        return
            
    #rest of rig start
    constrLoc = pm.spaceLocator(name = "Locator_Constraint")#creating locator to constraint the bone to

    weapJoint = pm.ls('*Joint_Weapon', type = 'joint')[0]
    pm.xform(constrLoc, ws = True, t = pm.xform(weapJoint, q = True, t = True, ws = True)) #moving the newly created constraint locator to the translation position of the joint
    
    pm.parentConstraint(constrLoc, weapJoint, mo = False)
    contr1 = pm.circle(name = 'Controller_Weapon_Global', r = 9, nr = [0, 1, 0])
    contr2 = pm.circle(name = 'Controller_Weapon_Local', r = 7, nr = [0, 1, 0])

    
    pm.parent(contr2[0], contr1[0])
    pm.xform(contr1, ws = True, t = pm.xform('Locator_Pivot', q = True, t = True, ws = True), ro = pm.xform('Locator_Pivot',q = True, ro = True, ws = True))
    pm.delete('Locator_Pivot')#deleting locator pivot after rig controllers have been created.
    pm.parent(constrLoc, contr2[0])
    
    R_Constr = pm.parentConstraint(pm.ls('*Helper_Weapon1')[0], contr1[0], name = 'Constraint_Weapon_Global')#parent constraint to right hand
    L_Constr = pm.parentConstraint(pm.ls('*Helper_Weapon2')[0], contr1[0])#parent constraint to left hand
    pm.setAttr('Constraint_Weapon_Global.%s' %pm.listAttr('Constraint_Weapon_Global', k = True)[-1], 0)
    
    pm.setKeyframe('Controller_Weapon_Global')
    pm.setKeyframe('Controller_Weapon_Global', v = 1, at = 'blendWeaponGlobal', itt = 'auto', ott = 'step')
    pm.setKeyframe('Constraint_Weapon_Global', v = 1, at = pm.listAttr('Constraint_Weapon_Global', k = True)[-2])#sets RH constraint to 1
    pm.setKeyframe('Constraint_Weapon_Global', v = 0, at = pm.listAttr('Constraint_Weapon_Global', k = True)[-1])#sets LH constraint to 0


def migi(mayaFalse):
    pm.setKeyframe('Controller_Weapon_Global', v = 1, at = 'blendWeaponGlobal', itt = 'auto', ott = 'step')#sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global', v = 1, at = pm.listAttr('Constraint_Weapon_Global', k = True)[-2], ott = 'step')#sets RH constraint to 1
    pm.setKeyframe('Constraint_Weapon_Global', v = 0, at = pm.listAttr('Constraint_Weapon_Global', k = True)[-1], ott = 'step')#sets LH constraint to 0
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport


    
def hidari(mayaFalse):
    pm.setKeyframe('Controller_Weapon_Global', v = 1, at = 'blendWeaponGlobal', itt = 'auto', ott = 'step')#sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global', v = 0, at = pm.listAttr('Constraint_Weapon_Global', k = True)[-2], ott = 'step')#sets RH constraint to 0
    pm.setKeyframe('Constraint_Weapon_Global', v = 1, at = pm.listAttr('Constraint_Weapon_Global', k = True)[-1], ott = 'step')#sets LH constraint to 1
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport


def weaponGlobal(mayaFalse):
    pm.setKeyframe('Controller_Weapon_Global', at = ['translate', 'rotate'])
    pm.setKeyframe('Controller_Weapon_Global', v = 0, at = 'blendWeaponGlobal', itt = 'auto', ott = 'step')#sets the blend parent of the controller transform to 0
    pm.setKeyframe('Constraint_Weapon_Global', v = 0, at = [pm.listAttr('Constraint_Weapon_Global', k = True)[-2], pm.listAttr('Constraint_Weapon_Global', k = True)[-1]], itt = 'auto', ott = 'step')#sets both left and right hand constraints to 0
    pm.currentTime(pm.currentTime(), update = True) #updating the viewport


def leftHandBake(mayaFalse): #deprecated
    
    #hikCreateAuxEffector Character1_Ctrl_LeftWristEffector;
    #bake the left hand controller
    pm.setKeyframe('Controller_LeftHand_Locator', t = 0)
    pm.setAttr('Controller_LeftHand_Locator.blendParent1', 1)
    
    #pm.setAttr('Character1_Ctrl_LeftWristEffector.rt', 1)
    #pm.setAttr('Character1_Ctrl_LeftWristEffector.rr', 0)
    
    for i in range(pm.intField('fromFrame', q = True, value = True), (1 + pm.intField('toFrame', q = True, value = True))): #copying keys from controller
        pm.currentTime(i, update = True)
        pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', at = 'translateX', v = pm.getAttr('Controller_LeftHand_Locator.tx', time = i))
        pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', at = 'translateY', v = pm.getAttr('Controller_LeftHand_Locator.ty', time = i))
        pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', at = 'translateZ', v = pm.getAttr('Controller_LeftHand_Locator.tz', time = i))
        pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', at = 'rotateX', v = pm.getAttr('Controller_LeftHand_Locator.rx', time = i))
        pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', at = 'rotateY', v = pm.getAttr('Controller_LeftHand_Locator.ry', time = i))
        pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', at = 'rotateZ', v = pm.getAttr('Controller_LeftHand_Locator.rz', time = i))




###############################################################
#from this part on is two sword support
###############################################################
def locatorMake_R(mayaFalse):
    #create two locators
    pivotLocR = mel.eval('curve -d 1 -p 0 0 1 -p 0 0 -1 -p -1 0 0 -p 0 0 -1 -p 1 0 0 -k 0 -k 1 -k 2 -k 3 -k 4 -n "Locator_Pivot_R" ;')
    pm.setAttr(pivotLocR + '.rotateAxisX', 90)#rotating the controller without affecting its axes to accurate depict its orientation
    pm.setAttr(pivotLocR + '.rotateAxisY', 90)
    pm.scale(pivotLocR, [2,2,3])
    
    
def locatorMake_L(mayaFalse):
    pivotLocL = mel.eval('curve -d 1 -p 0 0 1 -p 0 0 -1 -p -1 0 0 -p 0 0 -1 -p 1 0 0 -k 0 -k 1 -k 2 -k 3 -k 4 -n "Locator_Pivot_L" ;')
    pm.setAttr(pivotLocL + '.rotateAxisX', 90)#rotating the controller without affecting its axes to accurate depict its orientation
    pm.setAttr(pivotLocL + '.rotateAxisY', 90)
    pm.scale(pivotLocL, [2,2,3])
    
def rigMake_R(mayaFalse):
    #check
    if not pm.ls('Locator_Pivot_R'):#first, perform a check to see if locatorMake() has been performed. 
        pm.confirmDialog(title = u'SER 武器リグ', message = u'先ず、ピボット設定をしてください。')
        return

    constrLoc = pm.spaceLocator(name = "Locator_Constraint_R")#creating locator to constraint the bone to
            
    weapJoint = pm.ls('*Joint_Weapon', type = 'joint')[0]
    pm.xform(constrLoc, ws = True, t = pm.xform(weapJoint, q = True, t = True, ws = True)) #moving the newly created constraint locator to the translation position of the joint
    
    pm.parentConstraint(constrLoc, weapJoint, mo = False)
    contr1 = pm.circle(name = 'Controller_Weapon_Global_R', r = 9, nr = [0, 1, 0])
    contr2 = pm.circle(name = 'Controller_Weapon_Local_R', r = 7, nr = [0, 1, 0])
    pm.parent(contr2[0], contr1[0])
    pm.xform(contr1, ws = True, t = pm.xform('Locator_Pivot_R', q = True, t = True, ws = True), ro = pm.xform('Locator_Pivot_R',q = True, ro = True, ws = True))
    pm.delete('Locator_Pivot_R')#deleting locator pivot after rig controllers have been created.
    pm.parent(constrLoc, contr2[0])
    
    R_Constr = pm.parentConstraint(pm.ls('*Helper_Weapon1')[0], contr1[0], name = 'Constraint_Weapon_Global_R')#parent constraint to right hand
    L_Constr = pm.parentConstraint(pm.ls('*Helper_Weapon2')[0], contr1[0])#parent constraint to left hand
    pm.setAttr('Constraint_Weapon_Global_R.%s' %pm.listAttr('Constraint_Weapon_Global_R', k = True)[-1], 0)
    
    pm.setKeyframe('Controller_Weapon_Global_R')
    pm.setKeyframe('Controller_Weapon_Global_R', v = 1, at = 'blendWeaponGlobalR', itt = 'auto', ott = 'step')
    pm.setKeyframe('Constraint_Weapon_Global_R', v = 1, at = pm.listAttr('Constraint_Weapon_Global_R', k = True)[-2])#sets RH constraint to 1
    pm.setKeyframe('Constraint_Weapon_Global_R', v = 0, at = pm.listAttr('Constraint_Weapon_Global_R', k = True)[-1])#sets LH constraint to 0


def rigMake_L(mayaFalse):
    #check
    if not pm.ls('Locator_Pivot_L'):#first, perform a check to see if locatorMake() has been performed. 
        pm.confirmDialog(title = u'SER 武器リグ', message = u'先ず、ピボット設定をしてください。')
        return
            
    constrLoc = pm.spaceLocator(name = "Locator_Constraint_L")#creating locator to constraint the bone to
            
    weapJoint = pm.ls('*:Joint_Weapon', type = 'joint')[0]
    pm.xform(constrLoc, ws = True, t = pm.xform(weapJoint, q = True, t = True, ws = True)) #moving the newly created constraint locator to the translation position of the joint
    
    pm.parentConstraint(constrLoc, weapJoint, mo = False)
    contr1 = pm.circle(name = 'Controller_Weapon_Global_L', r = 9, nr = [0, 1, 0])
    contr2 = pm.circle(name = 'Controller_Weapon_Local_L', r = 7, nr = [0, 1, 0])
    pm.parent(contr2[0], contr1[0])
    pm.xform(contr1, ws = True, t = pm.xform('Locator_Pivot_L', q = True, t = True, ws = True), ro = pm.xform('Locator_Pivot_L',q = True, ro = True, ws = True))
    pm.delete('Locator_Pivot_L')#deleting locator pivot after rig controllers have been created.
    pm.parent(constrLoc, contr2[0])
    
    R_Constr = pm.parentConstraint(pm.ls('*Helper_Weapon1')[0], contr1[0], name = 'Constraint_Weapon_Global_L')#parent constraint to right hand
    L_Constr = pm.parentConstraint(pm.ls('*Helper_Weapon2')[0], contr1[0])#parent constraint to left hand
    pm.setAttr('Constraint_Weapon_Global_L.%s' %pm.listAttr('Constraint_Weapon_Global_L', k = True)[-1], 0)
    
    pm.setKeyframe('Controller_Weapon_Global_L')
    pm.setKeyframe('Controller_Weapon_Global_L', v = 1, at = 'blendWeaponGlobalL', itt = 'auto', ott = 'step')
    pm.setKeyframe('Constraint_Weapon_Global_L', v = 0, at = pm.listAttr('Constraint_Weapon_Global_L', k = True)[-2])#sets RH constraint to 1
    pm.setKeyframe('Constraint_Weapon_Global_L', v = 1, at = pm.listAttr('Constraint_Weapon_Global_L', k = True)[-1])#sets LH constraint to 0


def right_global(mayaFalse = False):
    pm.setKeyframe('Controller_Weapon_Global_R', at = ['translate', 'rotate'])
    pm.setKeyframe('Controller_Weapon_Global_R', v = 0, at = 'blendWeaponGlobalR', itt = 'auto', ott = 'step')#sets the blend parent of the controller transform to 0
    pm.setKeyframe('Constraint_Weapon_Global_R', v = 0, at = [pm.listAttr('Constraint_Weapon_Global_R', k = True)[-2], pm.listAttr('Constraint_Weapon_Global_R', k = True)[-1]], itt = 'auto', ott = 'step')#sets both left and right hand constraints to 0
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport
    pass

def right_right(mayaFalse = False):
    pm.setKeyframe('Controller_Weapon_Global_R', v = 1, at = 'blendWeaponGlobalR', itt = 'auto', ott = 'step')#sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global_R', v = 1, at = pm.listAttr('Constraint_Weapon_Global_R', k = True)[-2], ott = 'step')#sets RH constraint to 1
    pm.setKeyframe('Constraint_Weapon_Global_R', v = 0, at = pm.listAttr('Constraint_Weapon_Global_R', k = True)[-1], ott = 'step')#sets LH constraint to 0
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport
    pass

def right_left(mayaFalse = False):
    pm.setKeyframe('Controller_Weapon_Global_R', v = 1, at = 'blendWeaponGlobalR', itt = 'auto', ott = 'step')#sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global_R', v = 0, at = pm.listAttr('Constraint_Weapon_Global_R', k = True)[-2], ott = 'step')#sets RH constraint to 0
    pm.setKeyframe('Constraint_Weapon_Global_R', v = 1, at = pm.listAttr('Constraint_Weapon_Global_R', k = True)[-1], ott = 'step')#sets LH constraint to 1
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport
    pass

def left_global(mayaFalse = False):
    pm.setKeyframe('Controller_Weapon_Global_L', at = ['translate', 'rotate'])
    pm.setKeyframe('Controller_Weapon_Global_L', v = 0, at = 'blendWeaponGlobalL', itt = 'auto', ott = 'step')#sets the blend parent of the controller transform to 0
    pm.setKeyframe('Constraint_Weapon_Global_L', v = 0, at = [pm.listAttr('Constraint_Weapon_Global_R', k = True)[-2], pm.listAttr('Constraint_Weapon_Global_R', k = True)[-1]], itt = 'auto', ott = 'step')#sets both left and right hand constraints to 0
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport
    pass

def left_right(mayaFalse = False):
    pm.setKeyframe('Controller_Weapon_Global_L', v = 1, at = 'blendWeaponGlobalL', itt = 'auto', ott = 'step')#sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global_L', v = 1, at = pm.listAttr('Constraint_Weapon_Global_L', k = True)[-2], ott = 'step')#sets RH constraint to 1
    pm.setKeyframe('Constraint_Weapon_Global_L', v = 0, at = pm.listAttr('Constraint_Weapon_Global_L', k = True)[-1], ott = 'step')#sets LH constraint to 0
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport
    pass

def left_left(mayaFalse = False):
    pm.setKeyframe('Controller_Weapon_Global_L', v = 1, at = 'blendWeaponGlobalL', itt = 'auto', ott = 'step')#sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global_L', v = 0, at = pm.listAttr('Constraint_Weapon_Global_L', k = True)[-2], ott = 'step')#sets RH constraint to 0
    pm.setKeyframe('Constraint_Weapon_Global_L', v = 1, at = pm.listAttr('Constraint_Weapon_Global_L', k = True)[-1], ott = 'step')#sets LH constraint to 1
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport
    pass

###############################################################
#end of 2 swords
###############################################################

###############################################################
#start of 2 handed weapons
###############################################################

def locatorMake_2hand(mayaFalse):
    #create locators 
    pivotLoc = mel.eval('curve -d 1 -p 0 0 1 -p 0 0 -1 -p -1 0 0 -p 0 0 -1 -p 1 0 0 -k 0 -k 1 -k 2 -k 3 -k 4 -n "Locator_Pivot" ;')
    pm.setAttr(pivotLoc + '.rotateAxisX', 90)#rotating the controller without affecting its axes to accurate depict its orientation
    pm.setAttr(pivotLoc + '.rotateAxisY', 90)
    pm.scale(pivotLoc, [2,2,3])


def rigMake_2hand(mayaFalse):
    #check
    if not pm.ls('Locator_Pivot'):#first, perform a check to see if locatorMake() has been performed. 
        pm.confirmDialog(title = u'SER 武器リグ', message = u'先ず、ピボット設定をしてください。')
        return
            
    #rest of rig start
    constrLoc = pm.spaceLocator(name = "Locator_Constraint")#creating locator to constraint the bone to
    
    weapJoint = pm.ls('*Joint_Weapon', type = 'joint')[0]
    pm.xform(constrLoc, ws = True, t = pm.xform(weapJoint, q = True, t = True, ws = True)) #moving the newly created constraint locator to the translation position of the joint
    
    pm.parentConstraint(constrLoc, weapJoint, mo = False)
    controller_weapon = pm.circle(name = 'Controller_Weapon_Global', r = 9, nr = [0, 1, 0])
    controller_weapon_local = pm.circle(name = 'Controller_Weapon_Local', r = 7.5, nr = [0, 1, 0])
    controller_RH = pm.circle(name = 'Controller_Weapon_RightHand', r = 7, nr = [0, 1, 0])
    controller_LH = pm.circle(name = 'Controller_Weapon_LeftHand', r = 7, nr = [0, 1, 0])

    pm.parent(controller_weapon_local[0], controller_RH[0], controller_LH[0], controller_weapon[0])

    pm.xform(controller_weapon, ws = True, t = pm.xform('Locator_Pivot', q = True, t = True, ws = True), ro = pm.xform('Locator_Pivot',q = True, ro = True, ws = True))
    pm.xform(controller_RH, ws = True, t = [0, 10, 0], relative = True)
    pm.xform(controller_LH, ws = True, t = [0, -10, 0], relative = True)
    pm.delete('Locator_Pivot')#deleting locator pivot after rig controllers have been created.
    pm.parent(constrLoc, controller_weapon_local[0])
    
    #create the extra effectors
    mel.eval('hikCreateAuxEffector Character1_Ctrl_LeftWristEffector; hikCreateAuxEffector Character1_Ctrl_RightWristEffector;')#creating left and right effectors
    #Character1_Ctrl_LeftWristEffectorAux1 and Character1_Ctrl_RightWristEffectorAux1
    
    pm.parentConstraint(controller_RH[0], 'Character1_Ctrl_RightWristEffectorAux1', mo = False)
    pm.parentConstraint(controller_LH[0], 'Character1_Ctrl_LeftWristEffectorAux1', mo = False)
    
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1')
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v = 1, at = 'blendParent1', itt = 'auto', ott = 'step')
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1')
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v = 1, at = 'blendParent1', itt = 'auto', ott = 'step')


def rightHandGlobal(mayaFalse):
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', at = ['translate', 'rotate'])
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v = 0, at = 'blendParent1', itt = 'auto', ott = 'step')
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport
    
def leftHandGlobal(mayaFalse):
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', at = ['translate', 'rotate'])
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v = 0, at = 'blendParent1', itt = 'auto', ott = 'step')
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport
    
def rightHandLocal(mayaFalse):
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v = 1, at = 'blendParent1', itt = 'auto', ott = 'step')
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport
    
def leftHandLocal(mayaFalse):
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v = 1, at = 'blendParent1', itt = 'auto', ott = 'step')
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport

def auxOffRight(mayaFalse):
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v = 0, at = 'rt', itt = 'auto', ott = 'step')
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v = 0, at = 'rr', itt = 'auto', ott = 'step')
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport
    
def auxOffLeft(mayaFalse):
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v = 0, at = 'rt', itt = 'auto', ott = 'step')
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v = 0, at = 'rr', itt = 'auto', ott = 'step')
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport    
    
def auxOnRight(mayaFalse):
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v = 1, at = 'rt', itt = 'auto', ott = 'step')
    pm.setKeyframe('Character1_Ctrl_RightWristEffectorAux1', v = 1, at = 'rr', itt = 'auto', ott = 'step')
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport
    
def auxOnLeft(mayaFalse):
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v = 1, at = 'rt', itt = 'auto', ott = 'step')
    pm.setKeyframe('Character1_Ctrl_LeftWristEffectorAux1', v = 1, at = 'rr', itt = 'auto', ott = 'step')
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport



###############################################################
#end of 2 handed weapons
###############################################################

    
def foo(mayaFalse = False):
    pm.confirmDialog(title = 'SER 武器切り替え', message = '%i \n%i' %(pm.intField('fromFrame', q = True, value = True), pm.intField('toFrame', q = True, value = True)))



def rigUI(mayaFalse = False):
    windowID = 'weaponRig'#checking if window already exists
    if pm.window(windowID, exists = True):
        pm.deleteUI(windowID)
        pm.windowPref( 'weaponRig', remove=True )
    pm.window(windowID, title = u'SER 武器RIG')
    masterTab = pm.tabLayout(innerMarginWidth=5, innerMarginHeight=5)
    
    
    #rig switching
    rigSwitchcol = pm.columnLayout(u'武器切り替え', width = 400, parent = masterTab)
    switchFrame = pm.frameLayout(label = u'片手武器', labelIndent = 5, marginHeight = 5, parent = rigSwitchcol, nch = 5)
    switchRow = pm.rowLayout( 'switchRow', nc = 5, width = 600)
    pm.button( 'global', label = u'→　グローバル', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = switchRow, command = weaponGlobal)
    pm.button( 'righthand', label = u'→　右手', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = switchRow, command = migi)
    pm.button( 'lefthand', label = u'→　左手', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = switchRow, command = hidari)
    
    
    switchFrame2 = pm.frameLayout(label = u'二丁武器', labelIndent = 5, marginHeight = 5, parent = rigSwitchcol, nch = 5)
    twosword_1 = pm.rowLayout( 'test', nc = 5, width = 600, parent = switchFrame2)
    pm.button( 'global', label = u'右　→　グローバル', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twosword_1, command = right_global)
    pm.button( 'right-right', label = u'右　→　右', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twosword_1, command = right_right)
    pm.button( 'right-left', label = u'右　→　左', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twosword_1, command = right_left)
    twosword_2 = pm.rowLayout( '2hand_2', nc = 5, width = 600, parent = switchFrame2)
    pm.button( 'left-global', label = u'左　→　グローバル', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twosword_2, command = left_global)
    pm.button( 'left-left', label = u'左　→　右', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twosword_2, command = left_right)
    pm.button( 'left-right', label = u'左　→　左', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twosword_2, command = left_left)

    
    switchFrame3 = pm.frameLayout(label = u'両手武器', labelIndent = 5, marginHeight = 5, parent = rigSwitchcol, nch = 5)
    twohand_1 = pm.rowLayout( 'switchRow2h_1', nc = 5, width = 600, parent = switchFrame3)
    pm.button( 'rhGlobal', label = u'右手 → グローバル', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twohand_1, command = rightHandGlobal)
    pm.button( 'rhLocal', label = u'右手 → ローカル', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twohand_1, command = rightHandLocal)
    twohand_2 = pm.rowLayout( 'switchRow2h_2', nc = 5, width = 600, parent = switchFrame3)
    pm.button( 'lhGlobal', label = u'左手 → グローバル', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twohand_2, command = leftHandGlobal)
    pm.button( 'lhLocal', label = u'左手 → ローカル', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twohand_2, command = leftHandLocal)
    twohand_3 = pm.rowLayout( 'switchRow2h_3', nc = 5, width = 600, parent = switchFrame3)
    pm.text(label = 'Aux ON/OFF', parent = twohand_3, width = 100)
    twohand_4 = pm.rowLayout( 'switchRow2h_4', nc = 5, width = 600, parent = switchFrame3)
    pm.button( 'lhAuxOff', label = u'右手 → Aux Off', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twohand_4, command = auxOffRight)
    pm.button( 'rhAuxOff', label = u'左手 → Aux Off', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twohand_4, command = auxOffLeft)
    twohand_5 = pm.rowLayout( 'switchRow2h_5', nc = 5, width = 600, parent = switchFrame3)
    pm.button( 'lhAuxOn', label = u'右手 → Aux On', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twohand_5, command = auxOnRight)
    pm.button( 'rhAuxOn', label = u'左手 → Aux On', width = 112.5, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twohand_5, command = auxOnLeft)
    
    
    #rig creating
    rigMakeCol = pm.columnLayout(u'リグ作り', width = 400, parent = masterTab)
    oneHandFrame = pm.frameLayout(label = u'片手武器リグ作り', labelIndent = 5, marginHeight = 5, parent = rigMakeCol, nch = 5)
    oneHandRow = pm.rowLayout( 'oneHandRow', nc = 5, width = 600, parent = oneHandFrame)
    pm.button( 'locator', label = u'ロケーターを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = oneHandRow, command = locatorMake)
    pm.button( 'rig', label = u'リグを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = oneHandRow, command = rigMake)

    twoSwordFrame = pm.frameLayout(label = u'二丁武器リグ作り', labelIndent = 5, marginHeight = 5, parent = rigMakeCol, nch = 5)
    twoSwordRow1 = pm.rowLayout( 'twoSwordRow1', nc = 5, width = 600, parent = twoSwordFrame)
    pm.button( 'locatorR', label = u'右ロケーターを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twoSwordRow1, command = locatorMake_R)
    pm.button( 'locatorL', label = u'左ロケーターを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twoSwordRow1, command = locatorMake_L)
    twoSwordRow2 = pm.rowLayout( 'twoSwordRow2', nc = 5, width = 600, parent = twoSwordFrame)
    pm.button( 'rigR', label = u'右リグを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twoSwordRow2, command = rigMake_R)    
    pm.button( 'rigL', label = u'左リグを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twoSwordRow2, command = rigMake_L)    
     
    twoHandFrame = pm.frameLayout(label = u'両手武器リグ作り', labelIndent = 5, marginHeight = 5, parent = rigMakeCol, nch = 5)
    twoHandRow = pm.rowLayout( 'twoHandRow', nc = 5, width = 600, parent = twoHandFrame)
    pm.button( 'twohandLocator', label = u'ロケーターを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twoHandRow, command = locatorMake)
    pm.button( 'twoHandRig', label = u'リグを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = twoHandRow, command = rigMake_2hand)
    
    
    pm.showWindow()
    pm.window(windowID, edit = True, widthHeight = (500,400))