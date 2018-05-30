# encoding: utf-8
'''
Eye Rig
Author: Chew

copies finger transform data from one hand to the other
'''
import pymel.core as pm
import maya.mel as mel

def eyeRig(mayaFalse):
    mel.eval('curve -d 1 -p 1 0 -1 -p -1 0 -1 -p -1 0 1 -p 1 0 1 -p 1 0 -1 -k 0 -k 1 -k 2 -k 3 -k 4 -n "Box_RightEye" ;')
    pm.rotate('Box_RightEye', -90, 0, 0)
    pm.scale('Box_RightEye', 8, 3, 3)
    pm.makeIdentity('Box_RightEye', apply = True, pn = True, n = False)
    contr_Right = pm.spaceLocator(name = 'Controller_RightEye')
    pm.parent(contr_Right, 'Box_RightEye')
    pm.transformLimits(contr_Right, etx = [True, True], ety = [True, True], etz = [True, True], tx = [-8, 8], ty = [-3, 3], tz = [0, 0])
    
    mel.eval('curve -d 1 -p 1 0 -1 -p -1 0 -1 -p -1 0 1 -p 1 0 1 -p 1 0 -1 -k 0 -k 1 -k 2 -k 3 -k 4 -n "Box_LeftEye" ;')
    pm.rotate('Box_LeftEye', -90, 0, 0)
    pm.scale('Box_LeftEye', 8, 3, 3)
    pm.makeIdentity('Box_LeftEye', apply = True, pn = True, n = False)
    contr_Left = pm.spaceLocator(name = 'Controller_LeftEye')
    pm.parent(contr_Left, 'Box_LeftEye')
    pm.transformLimits(contr_Left, etx = [True, True], ety = [True, True], etz = [True, True], tx = [-8, 8], ty = [-3, 3], tz = [0, 0])
    
    
    eyeGroup = pm.group('Box_RightEye', 'Box_LeftEye', name = 'Controller_Eyes')
    pm.move(eyeGroup, 30, pm.xform('*Character_Eye_R', q = True, ws = True, translation = True)[1], 0)
    pm.move('Box_RightEye', -10, 0, 0, relative = True)
    pm.setAttr('Box_RightEye.tx', lock = True)
    pm.setAttr('Box_RightEye.ty', lock = True)
    pm.setAttr('Box_RightEye.tz', lock = True)
    pm.setAttr('Box_RightEye.rx', lock = True)
    pm.setAttr('Box_RightEye.ry', lock = True)
    pm.setAttr('Box_RightEye.rz', lock = True)
    pm.setAttr('Box_RightEye.sx', lock = True)
    pm.setAttr('Box_RightEye.sy', lock = True)
    pm.setAttr('Box_RightEye.sz', lock = True)
    pm.move('Box_LeftEye', 10, 0, 0, relative = True)
    pm.setAttr('Box_LeftEye.tx', lock = True)
    pm.setAttr('Box_LeftEye.ty', lock = True)
    pm.setAttr('Box_LeftEye.tz', lock = True)
    pm.setAttr('Box_LeftEye.rx', lock = True)
    pm.setAttr('Box_LeftEye.ry', lock = True)
    pm.setAttr('Box_LeftEye.rz', lock = True)
    pm.setAttr('Box_LeftEye.sx', lock = True)
    pm.setAttr('Box_LeftEye.sy', lock = True)
    pm.setAttr('Box_LeftEye.sz', lock = True)
    pm.parentConstraint('Character_HeadUp', eyeGroup, mo = True)
    
    
    loc_right = pm.spaceLocator(name = 'Locator_RightEye')
    pm.xform(loc_right, translation = pm.xform('Character_Eye_R', q = True, ws = True, t = True), ws = True)
    pm.move(loc_right, 0, 0, 15, relative = True)
    loc_left = pm.spaceLocator(name = 'Locator_LeftEye')
    pm.xform(loc_left, translation = pm.xform('Character_Eye_L', q = True, ws = True, t = True), ws = True)
    pm.move(loc_left, 0, 0, 15, relative = True)
    pm.parent(loc_right, loc_left, eyeGroup)
    
    pm.setAttr(loc_right.tz, lock = True)
    pm.setAttr(loc_left.tz, lock = True)
    pm.setAttr(loc_right.visibility, 0)
    pm.setAttr(loc_left.visibility, 0)
    
    
    #creating up vectors for eye constraints
    leftUp = pm.spaceLocator(name = 'Character_EyeUp_L')
    pm.xform(leftUp, translation = pm.xform(loc_left, q = True, t = True))
    pm.move(leftUp, 0, 7.5, -7.5, relative = True)
    pm.parent(leftUp, loc_left)
    rightUp = pm.spaceLocator(name = 'Character_EyeUp_R')
    pm.xform(rightUp, translation = pm.xform(loc_right, q = True, t = True))
    pm.move(rightUp, 0, 7.5, -7.5, relative = True)
    pm.parent(rightUp, loc_right)
    
    pm.aimConstraint(loc_right, 'Character_Eye_R', mo = True, worldUpType = 'object', worldUpObject = rightUp)
    pm.aimConstraint(loc_left, 'Character_Eye_L', mo = True, worldUpType = 'object', worldUpObject = leftUp)
    
    
    pm.pointConstraint(contr_Right, loc_right, mo = True, skip = 'z')
    pm.pointConstraint(contr_Left, loc_left, mo = True, skip = 'z')
    
    pm.confirmDialog(title = u'SER 目リグ', message = u'リグ作りました。')