# encoding: utf-8
import pymel.core as pm
import maya.OpenMayaAnim as animAPI
import maya.mel as mel

def xyzDel(*mayaFalse):
    pm.mel.hikBakeCharacter(0)
    pm.currentTime(0)
    if pm.ls('x'):
        pm.parent(pm.listRelatives(pm.ls('z'), type='transform'), 'Character1_Ctrl_Reference')
        pm.delete(pm.listRelatives(pm.ls('x'), type='transform'), 'x')
    else:
        print 'XYZ controls not installed'



    #weapon baking
    pm.bakeResults(pm.ls('WeaponMotion*', type='transform'), pm.ls('WeaponRoot*', type='transform'), simulation=True, t=[animAPI.MAnimControl.minTime().value(), animAPI.MAnimControl.maxTime().value()])
    pm.select(d=True)
    if pm.ls('*_R'):
        print 'right hand weapon present'
        try:
            pm.select('Constraint_Weapon_Global_R', add=True)
        except:
            pm.select(pm.listRelatives('WeaponMotion_R', type='constraint')[0], add=True)

    if pm.ls('*_L'):
        print 'left hand weapon present'
        try:
            pm.select('Constraint_Weapon_Global_L', add=True)
        except:
            pm.select(pm.listRelatives('WeaponMotion_L', type='constraint')[0], add=True)
    mel.eval("doDelete;")


    if pm.ls('*_R'):
        pm.parentConstraint('WeaponRoot_R', 'R_AttachmentMotion', mo=False)
    if pm.ls('*_L'):
        pm.parentConstraint('WeaponRoot_L', 'L_AttachmentMotion', mo=False)
    pm.bakeResults(pm.ls('*_AttachmentMotion', type='transform'), simulation=True, t=[animAPI.MAnimControl.minTime().value(), animAPI.MAnimControl.maxTime().value()])


    if pm.ls('*_R'):
        pm.select('R_AttachmentMotion_parentConstraint1', add=True)
    if pm.ls('*_L'):
        pm.select('L_AttachmentMotion_parentConstraint1', add=True)
    mel.eval("doDelete;")