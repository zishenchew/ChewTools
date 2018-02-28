# encoding: utf-16
'''
_______________________________________________
EKKO mantle set up tool
マントルインストールツール
_______________________________________________

スクリプトは2分に分けて、一つ目は骨の位置のロケータを作る

二つ目はロケータの位置に、リッグを作ります。

担当者：チュー・ジシェン
_______________________________________________
'''

import pymel.core as pm
import maya.mel as mel

#create two functions, 1 to spawn the bones/locator to designate location for bones and another function to execute the bones and expressions

#def mantleLocCreate():
locM = pm.spaceLocator(name = 'locM')
pm.xform(locM, ws = True, translation = pm.xform('neck', query = True, ws = True, translation = True), scale = [3, 3, 3]) #shifting it into place
pm.xform(locM, relative = True, translation = [0, 0, -12])
locR = pm.spaceLocator(name = 'locR')
pm.xform(locR, ws = True, translation = pm.xform('R_shoulder', query = True, ws = True, translation = True), scale = [3, 3, 3]) #shifting it into place
pm.xform(locR, relative = True, translation = [-5, 0, -12])
locRR = pm.spaceLocator(name = 'locRR')
pm.xform(locRR, ws = True, translation = pm.xform('R_upperarm2', query = True, ws = True, translation = True), scale = [3, 3, 3]) #shifting it into place
pm.xform(locRR, relative = True, translation = [-5, 8, -2])
locL = pm.spaceLocator(name = 'locL')
pm.xform(locL, ws = True, translation = pm.xform('L_shoulder', query = True, ws = True, translation = True), scale = [3, 3, 3]) #shifting it into place
pm.xform(locL, relative = True, translation = [5, 0, -12])
locLL = pm.spaceLocator(name = 'locLL')
pm.xform(locLL, ws = True, translation = pm.xform('L_upperarm2', query = True, ws = True, translation = True), scale = [3, 3, 3]) #shifting it into place
pm.xform(locLL, relative = True, translation = [5, 8, -2])
locList = [locM, locR, locRR, locL, locLL]
locDict = {}


for i in locList:
    sim = pm.duplicate(i, name = i[:3] + '_sim' + i[3:])
    pm.xform(sim, relative = True, translation = [0, -25.627, 0])
    locDict[i] = sim

#pm.confirmDialog(title = 'EKKO Mantle', message = '骨ロケータ作りました。欲しい所に移動してください。\nBone Locators created! Shift them to the desired location!', button = ['Ok'])
print('Bone Locators created! Shift them to the desired location!')


#____________________________________________________________________________________________________________________________________________________
#def mantleCreate:
locList = pm.ls('locM', 'locR','locRR', 'locL', 'locLL')#recreate the list data
locSimList = pm.ls('loc_simM', 'loc_simR','loc_simRR', 'loc_simL', 'loc_simLL')#recreating the list data
locDict = {}
for i in locList:
    locDict[i] = pm.ls(i[:3] + '_sim' + i[3:])

#create mantle control
mantContr = mel.eval('curve -d 1 -p -0.5 1 0.866025 -p 0.5 1 0.866025 -p 0.5 -1 0.866025 -p 1 -1 0 -p 1 1 0 -p 0.5 1 -0.866025 -p 0.5 -1 -0.866025 -p -0.5 -1 -0.866026 -p -0.5 1 -0.866026 -p -1 1 -1.5885e-007 -p -1 -1 -1.5885e-007 -p -0.5 -1 0.866025 -p -0.5 1 0.866025 -p -1 1 -1.5885e-007 -p -0.5 1 -0.866026 -p 0.5 1 -0.866025 -p 1 1 0 -p 0.5 1 0.866025 -p 0.5 -1 0.866025 -p -0.5 -1 0.866025 -p -1 -1 -1.5885e-007 -p -0.5 -1 -0.866026 -p 0.5 -1 -0.866025 -p 1 -1 0 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -k 16 -k 17 -k 18 -k 19 -k 20 -k 21 -k 22 -k 23 -n "controller1" ;')
mantContr = pm.rename(mantContr, 'mantle_Control')
pm.addAttr(mantContr, longName = 'Drag', attributeType = 'short', keyable = True, defaultValue = 5, minValue = 0) #adding drag attribute


pm.select(deselect = True)#deselect so it won't be the child of anything
mantleParent = pm.joint(name = 'mantleParent', position = pm.xform('locM', query = True, worldSpace = True, translation = True), radius = 2.5)#creating mantle parent

#main joints
jointList = {}
for i in locList:
    pm.select(deselect = True)#deselect so it is parented to world
    j = pm.joint(name = 'joint' + i[3:], position = pm.xform(i, query = True, worldSpace = True, translation = True), radius = 2.5)
    jointList[j] = None
    #setting transform and rotation limits
    if i[2:5] == 'cR':
        pm.transformLimits(j, rotationX = [-5, 90], rotationY = [-45, 45], rotationZ = [-45, 35], erx = [True, True], ery = [True, True], erz = [True, True])
    if i[2:5] == 'cM':
        pm.transformLimits(j, rotationX = [-5, 90], rotationY = [-45, 45], rotationZ = [-15, 15], erx = [True, True], ery = [True, True], erz = [True, True])
    if i[2:5] == 'cL':
        pm.transformLimits(j, rotationX = [-5, 90], rotationY = [-45, 45], rotationZ = [-35, 45], erx = [True, True], ery = [True, True], erz = [True, True])

#main sims
for i in jointList:
    pm.select(i) #selecting so it is parented to parent joint
    sim = pm.joint(name = 'sim' + i[5:], position = pm.xform('loc_sim'+i[5:], query = True, worldSpace = True, translation = True), radius = 1.5)
    jointList[i] = sim

pm.select(deselect = True)

for i in jointList: #selecting joints
    pm.select(i, add = True)

pm.parent(pm.ls(sl = True), mantleParent)

#calc
calcList = []
mantGroup = pm.group(name = 'mantleGroup', world = True, empty = True)#creating calc joints
for i in pm.listRelatives(mantleParent):
    cal = pm.duplicate(i, name = i[:7] + '_Calc', parentOnly = True)
    pm.parent(cal, mantGroup)
    spaceLoc = pm.spaceLocator(name = 'simLoc_' + i[5:])#creating simloc locator
    pm.xform(spaceLoc, ws = True, translation = pm.xform(i, query = True, translation = True, ws = True))#moving it to the right place
    pm.xform(spaceLoc, relative = True, translation = [0, -25.627, 0])
    pm.addAttr(spaceLoc, longName = 'momentumX', attributeType = 'float')
    pm.addAttr(spaceLoc, longName = 'momentumY', attributeType = 'float')
    pm.addAttr(spaceLoc, longName = 'momentumZ', attributeType = 'float')

    #creating expression to drive the SimLoc's translations
    pm.expression(object = spaceLoc, name = spaceLoc + '_translationExp', string = '$f = `currentTime -q`;\n$lastposX = `getAttr -t ($f - mantle_Control.Drag) %s.translateX`;\n%s.translateX = %s.translateX - (%s.translateX - $lastposX);\n$lastposY = `getAttr -t ($f - mantle_Control.Drag) %s.translateY`;\n%s.translateY = %s.translateY - (%s.translateY - $lastposY) - 25.627;\n$lastposZ = `getAttr -t ($f - mantle_Control.Drag) %s.translateZ`;\n%s.translateZ = %s.translateZ - (%s.translateZ - $lastposZ);' %(cal[0], spaceLoc, cal[0], cal[0], cal[0], spaceLoc, cal[0], cal[0], cal[0], spaceLoc, cal[0], cal[0]))
    '''
    '$f = `currentTime -q`;\n
    $lastposX = `getAttr -t ($f - mantle_Control.Drag) %s.translateX`;\n
    %s.translateX = %s.translateX - (%s.translateX - $lastposX);\n
    $lastposY = `getAttr -t ($f - mantle_Control.Drag) %s.translateY`;\n
    %s.translateY = %s.translateY - (%s.translateY - $lastposY) - 25.627;\n
    $lastposZ = `getAttr -t ($f - mantle_Control.Drag) %s.translateZ`;\n
    %s.translateZ = %s.translateZ - (%s.translateZ - $lastposZ);' %(cal[0], spaceLoc, cal[0], cal[0], cal[0], spaceLoc, cal[0], cal[0], cal[0], spaceLoc, cal[0], cal[0])
    '''

    #create expression for the momentum attributes
    if i[5:] == 'R':
        xVar = '- 0.000001'
    else:
        xVar = '+ 0.000001'
    pm.expression(object = spaceLoc, name = spaceLoc + '_momentumExp', string = '%s.momentumX = %s.translateX - %s.translateX %s;\n%s.momentumY = %s.translateY - %s.translateY;\n%s.momentumZ = %s.translateZ - %s.translateZ + 0.001;' % (spaceLoc, cal[0], spaceLoc, xVar, spaceLoc, cal[0], spaceLoc, spaceLoc, cal[0], spaceLoc))
    '''
    %s.momentumX = %s.translateX - %s.translateX %s;\n
    %s.momentumY = %s.translateY - %s.translateY;\n
    %s.momentumZ = %s.translateZ - %s.translateZ + 0.001;' % (spaceLoc, cal, spaceloc, xVar, spaceLoc, cal, spaceloc, spaceLoc, cal, spaceloc)

    '%s.momentumX = %s.translateX - %s.translateX %s;\n%s.momentumY = %s.translateY - %s.translateY;\n%s.momentumZ = %s.translateZ - %s.translateZ + 0.001;' % (spaceLoc, cal[0], spaceLoc, xVar, spaceLoc, cal[0], spaceLoc, spaceLoc, cal[0], spaceLoc)
    '''
    pm.parent(spaceLoc, mantGroup)
    if not cal[0][5:7] == 'RR' and not cal[0][5:7] == 'LL':
        calcList.append(cal[0])
    #creating transform limits for calc joints
    pm.transformLimits(cal[0], rotationX = [-5, 360], enableRotationY = [True, False])

pm.delete('simLoc_RR', 'simLoc_LL', 'jointRR_Calc', 'jointLL_Calc')#deleting the RR and LL simlocs that we won't need
pm.parent(mantleParent, 'spine2')#parenting main joints into joint hierarchy

#calcDriver
calcDriver = pm.duplicate(mantleParent, parentOnly = True, name = 'mantleCalcDriver')#creating calcDriver joints
for i in pm.listRelatives(mantleParent):
    j = pm.duplicate(i, name = i[:7] + '_CalcDriver', parentOnly = True)
    pm.parent(j, calcDriver)

#trigo
trigoJointList = []
trigoParent = pm.duplicate(mantleParent, parentOnly = True, name = 'mantle_trigo')#creating trigoJoints
for i in pm.listRelatives(mantleParent):
    trigoJoint = pm.duplicate(i, name = i[:7] + '_trigo')
    sim = pm.rename(pm.listRelatives(trigoJoint[0]), 'sim' + i[5:] + '_trigo')
    pm.parent(trigoJoint, trigoParent)
    if not (str(trigoJoint[0][5:7]) == 'RR') and not (str(trigoJoint[0][5:7]) == 'LL'):
        trigoJointList.append(trigoJoint[0])
    #creating transform limits
    pm.transformLimits(trigoJoint[0], rotationY = [-45, 45], ery = [True, True])
    
    if trigoJoint[0][5:7] == 'RR' or trigoJoint[0][5:7] == 'LL': #performing parentConstraint from upperarm2 to RR or LL joint
        print('RR or LL joint constrained to upper arm')
        pm.parentConstraint(trigoJoint[0][5] + '_upperarm2', trigoJoint[0], mo = True)
    
#write a combined trigo expression
pm.expression(object = trigoJointList[0], name = trigoJointList[0] + '_trigoExp', string = '%s.rotateX = atand(%s.momentumZ/%s.momentumY) - pelvis.rotateX - spine1.rotateZ - spine2.rotateZ;\n%s.rotateY = atand(%s.momentumX/%s.momentumZ) - pelvis.rotateY - spine1.rotateX - spine2.rotateX;\n%s.rotateX = atand(%s.momentumZ/%s.momentumY) - pelvis.rotateX - spine1.rotateZ - spine2.rotateZ;\n%s.rotateY = atand(%s.momentumX/%s.momentumZ) - pelvis.rotateY - spine1.rotateX - spine2.rotateX;\n%s.rotateX = atand(%s.momentumZ/%s.momentumY) - pelvis.rotateX - spine1.rotateZ - spine2.rotateZ;\n%s.rotateY = atand(%s.momentumX/%s.momentumZ) - pelvis.rotateY - spine1.rotateX - spine2.rotateX;' % (trigoJointList[1], 'simLoc_' + trigoJointList[1][5], 'simLoc_' + trigoJointList[1][5], trigoJointList[1], 'simLoc_' + trigoJointList[1][5], 'simLoc_' + trigoJointList[1][5], trigoJointList[0], 'simLoc_' + trigoJointList[0][5], 'simLoc_' + trigoJointList[0][5], trigoJointList[0], 'simLoc_' + trigoJointList[0][5], 'simLoc_' + trigoJointList[0][5], trigoJointList[2], 'simLoc_' + trigoJointList[2][5], 'simLoc_' + trigoJointList[2][5], trigoJointList[2], 'simLoc_' + trigoJointList[2][5], 'simLoc_' + trigoJointList[2][5]))
'''
%s.rotateX = atand(%s.momentumZ/%s.momentumY) - pelvis.rotateX - spine1.rotateZ - spine2.rotateZ;\n
jointR_Driver1.rotateY = atand(simLocR1.momentumX/simLocR1.momentumZ) - pelvis.rotateY - spine1.rotateX - spine2.rotateX;\n

jointM_Driver1.rotateX = atand(simLocM1.momentumZ/simLocM1.momentumY) - pelvis.rotateX - spine1.rotateZ - spine2.rotateZ;\n
jointM_Driver1.rotateY = atand(simLocM1.momentumX/simLocM1.momentumZ) - pelvis.rotateY - spine1.rotateX - spine2.rotateX;\n

jointL_Driver1.rotateX = atand(simLocL1.momentumZ/simLocL1.momentumY) - pelvis.rotateX - spine1.rotateZ - spine2.rotateZ;\n
jointL_Driver1.rotateY = atand(simLocL1.momentumX/simLocL1.momentumZ) - pelvis.rotateY - spine1.rotateX - spine2.rotateX;\n % (trigoJointList[1], 'simLoc' + trigoJointList[1][5], 'simLoc' + trigoJointList[1][5], trigoJointList[1], 'simLoc' + trigoJointList[1][5], 'simLoc' + trigoJointList[1][5], trigoJointList[0], 'simLoc' + trigoJointList[0][5], 'simLoc' + trigoJointList[0][5], trigoJointList[0], 'simLoc' + trigoJointList[0][5], 'simLoc' + trigoJointList[0][5], trigoJointList[2], 'simLoc' + trigoJointList[2][5], 'simLoc' + trigoJointList[2][5], trigoJointList[2], 'simLoc' + trigoJointList[2][5], 'simLoc' + trigoJointList[2][5])
'''

#create the constraints for calcDriver -> calc
for i in calcList:
    pm.parentConstraint(i + 'Driver', i, mo = False)



#create IK
for i in trigoJointList:
    ik = pm.ikHandle(name = 'ikHandle' + i[5], sj = i[:6], ee = pm.listRelatives(i[:6])[0], solver = 'ikRPsolver')[0]
    pm.parent(ik, mantleParent)
    pm.parentConstraint(pm.listRelatives(i)[0], ik, mo = False, weight = 1) #create constraints between trigo and IK
    #if i[5] != 'M':
        #pm.parentConstraint('sim' + i[5] + i[5] + '_trigo', ik, mo = True, weight = 0.25) #creating another parent constraint for the LL and RR to affect the R

pm.parentConstraint('jointRR_trigo', 'jointRR', mo = True)
pm.parentConstraint('jointLL_trigo', 'jointLL', mo = True)



pm.delete(locList, locSimList)