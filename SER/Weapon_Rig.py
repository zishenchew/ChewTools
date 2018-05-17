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
    
    #by this point, the locators should be right at the joint of the weapon
    
def rigMake(mayaFalse):
    #check
    if not pm.ls('Locator_Pivot'):#first, perform a check to see if locatorMake() has been performed. 
        pm.confirmDialog(title = u'SER 武器リグ', message = u'先ず、ピボット設定をしてください。')
        return
            
    #rest of rig start
    constrLoc = pm.spaceLocator(name = "Locator_Constraint")#creating locator to constraint the bone to
    '''
    for i in pm.ls(type = 'joint'):#assigning a variable name to the weapon joint
        #print i
        if i.find('Joint_Weapon') != -1:
    '''
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
    pm.setKeyframe('Controller_Weapon_Global', v = 1, at = 'blendWeapoaGlobal', itt = 'auto', ott = 'step')#sets the blend parent of the controller transform to 1
    pm.setKeyframe('Constraint_Weapon_Global', v = 0, at = pm.listAttr('Constraint_Weapon_Global', k = True)[-2], ott = 'step')#sets RH constraint to 0
    pm.setKeyframe('Constraint_Weapon_Global', v = 1, at = pm.listAttr('Constraint_Weapon_Global', k = True)[-1], ott = 'step')#sets LH constraint to 1
    pm.currentTime(pm.currentTime(), update = True)#updating the viewport


def weaponGlobal(mayaFalse):
    pm.setKeyframe('Controller_Weapon_Global', at = ['translate', 'rotate'])
    pm.setKeyframe('Controller_Weapon_Global', v = 0, at = 'blendWeaponGlobal', itt = 'auto', ott = 'step')#sets the blend parent of the controller transform to 0
    pm.setKeyframe('Constraint_Weapon_Global', v = 0, at = [pm.listAttr('Constraint_Weapon_Global', k = True)[-2], pm.listAttr('Constraint_Weapon_Global', k = True)[-1]], itt = 'auto', ott = 'step')#sets both left and right hand constraints to 0
    pm.currentTime(pm.currentTime(), update = True) #updating the viewport


def helperBake(mayaFalse): #deprecated
    #including a humanIK bake for testing purposes
    #mel.eval('performBakeSimulation 1;') #open bake settings
    mel.eval('hikBakeCharacter 0; hikSetCurrentSourceFromCharacter(hikGetCurrentCharacter()); hikUpdateSourceList; hikUpdateContextualUI;')
    #constrain 
    
    pm.bakeResults(pm.ls('*Joint_Weapon')[0], t = (animAPI.MAnimControl.minTime().value(), animAPI.MAnimControl.maxTime().value()), simulation = True)
    helperToWeapon = pm.parentConstraint(pm.ls('*Joint_Weapon', type = 'joint')[0], pm.ls('*Helper_Weapon1')[0], mo = False)
    pm.bakeResults(pm.ls('*Helper_Weapon1')[0], t = (animAPI.MAnimControl.minTime().value(), animAPI.MAnimControl.maxTime().value()), simulation = True)
    
    pm.delete(helperToWeapon)
    pm.deleteUI('OptionBoxWindow')


def rigUI(mayaFalse):
    windowID = 'weaponRig'#checking if window already exists
    if pm.window(windowID, exists = True):
        pm.deleteUI(windowID)
        pm.windowPref( 'weaponRig', remove=True )
    pm.window(windowID, title = u'SER 武器RIG')
    masterCol = pm.columnLayout( 'rigCol', width = 400)
    
    createFrame = pm.frameLayout(label = u'リグ作り', labelIndent = 5, marginHeight = 5, parent = masterCol, nch = 5)
    makeRow = pm.rowLayout( 'makeRow', nc = 5, width = 600)
    pm.button( 'locator', label = u'ロケーターを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'makeRow', command = locatorMake)
    pm.button( 'rig', label = u'リグを作る', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'makeRow', command = rigMake)
        
    switchFrame = pm.frameLayout(label = u'武器切り替え', labelIndent = 5, marginHeight = 5, parent = masterCol, nch = 5)
    switchRow = pm.rowLayout( 'switchRow', nc = 5, width = 600)
    pm.button( 'global', label = u'→　グローバル', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'switchRow', command = weaponGlobal)
    pm.button( 'righthand', label = u'→　右手', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'switchRow', command = migi)
    pm.button( 'lefthand', label = u'→　左手', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'switchRow', command = hidari)
    
    pm.showWindow()
    pm.window(windowID, edit = True, widthHeight = (500,150))