# encoding: utf-16
'''
_______________________________________________
EKKO mantle set up tool
マントルインストールツール
_______________________________________________

スクリプトは最初にロケータ入れて、骨はその位置に作ります。

違う身長対応しています。


担当者：チュー・ジシェン
_______________________________________________
'''

import pymel.core as pm
import maya.mel as mel

#create 1 fixed set of bones, which will extend based on the character height

#def mantleCreate(charaHeight = 2): #default 2, 160cm height
charaHeight = 2
locM = pm.spaceLocator(name = 'locM')
pm.xform(locM, ws = True, translation = [8.17948246602115e-16, 126.43254364390185, -8.830608530289298], scale = [3, 3, 3]) #shifting it into place
locR = pm.spaceLocator(name = 'locR')
pm.xform(locR, ws = True, translation = [-10, 124.043, -9.221], scale = [3, 3, 3]) #shifting it into place
locRR = pm.spaceLocator(name = 'locRR')
pm.xform(locRR, ws = True, translation = [-14, 129, -1.6], scale = [3, 3, 3]) #shifting it into place
locL = pm.spaceLocator(name = 'locL')
pm.xform(locL, ws = True, translation = [10, 124.043, -9.221], scale = [3, 3, 3]) #shifting it into place
locLL = pm.spaceLocator(name = 'locLL')
pm.xform(locLL, ws = True, translation = [14, 129, -1.6], scale = [3, 3, 3]) #shifting it into place

heightPosition = {} #order of data is M, R, RR, L, LL
heightPosition['1'] = [0, 117.518, -8.237], [-9.25, 115.129, -8.627], [-11, 120.1, -1.00], [9.25, 115.129, -8.627], [11, 120.1, -1] #1 = 150cm
heightPosition['1sim'] = [0.001, 61.086, -9.781], [-19, 77.696, -9.919], [-28, 120.1, -1], [19, 77.696, -9.919], [28, 120.1, -1]
heightPosition['2'] = [8.17948246602115e-16, 126.43254364390185, -8.830608530289298], [-10, 124.043, -9.221], [-14, 129, -1.6], [10, 124.043, -9.221], [14, 129, -1.6] #2 = 160cm
heightPosition['2sim'] = [0.001, 70, -11.002], [-21.549, 80, -10.513], [-31, 129, -1.6], [21.549, 80, -10.513], [31, 129, -1.6]
heightPosition['3'] = [0, 133.789, -13.546], [-11, 131.4, -13.936], [-15, 136.357, -4.721], [11, 131.4, -13.936], [15, 136.357, -4.721] #3 = 170cm
heightPosition['3sim'] = [0.001, 77.357, -15.717], [-25.5, 79, -15.228], [-32, 136.357, -4.721], [25.5, 79, -15.228], [32, 136.357, -4.721]
heightPosition['4'] = [0, 157.786, -14.305], [-12, 155, -14.695], [-20, 160.353, -4.5], [12, 155, -14.695], [20, 160.353, -4.5] #4 = 180cm
heightPosition['4sim'] = [0.001, 101.353, -16.476], [-25.75, 100, -15.987], [-37, 160.353, -4.5], [25.75, 100, -15.987], [37, 160.353, -4.5]

#translating the locators to their position
pm.xform('loc' + 'M', ws = True, translation = heightPosition['%s' %(charaHeight)][0], scale = [3, 3, 3])
pm.xform('loc' + 'R', ws = True, translation = heightPosition['%s' %(charaHeight)][1], scale = [3, 3, 3])
pm.xform('loc' + 'RR', ws = True, translation = heightPosition['%s' %(charaHeight)][2], scale = [3, 3, 3])
pm.xform('loc' + 'L', ws = True, translation = heightPosition['%s' %(charaHeight)][3], scale = [3, 3, 3])
pm.xform('loc' + 'LL', ws = True, translation = heightPosition['%s' %(charaHeight)][4], scale = [3, 3, 3])



locList = [locM, locR, locRR, locL, locLL]
locDict = {}
locSimList = []

for i in locList:
    sim = pm.duplicate(i, name = i[:3] + '_sim' + i[3:])
    locSimList.append(i)
    locDict[i] = sim

#translating the sim locators to their positions
pm.xform('loc_sim' + 'M', ws = True, translation = heightPosition['%ssim' %(charaHeight)][0], scale = [3, 3, 3])
pm.xform('loc_sim' + 'R', ws = True, translation = heightPosition['%ssim' %(charaHeight)][1], scale = [3, 3, 3])
pm.xform('loc_sim' + 'RR', ws = True, translation = heightPosition['%ssim' %(charaHeight)][2], scale = [3, 3, 3])
pm.xform('loc_sim' + 'L', ws = True, translation = heightPosition['%ssim' %(charaHeight)][3], scale = [3, 3, 3])
pm.xform('loc_sim' + 'LL', ws = True, translation = heightPosition['%ssim' %(charaHeight)][4], scale = [3, 3, 3])



#____________________________________________________________________________________________________________________________________________________

#locList = pm.ls('locM', 'locR','locRR', 'locL', 'locLL')#recreate the list data
#locSimList = pm.ls('loc_simM', 'loc_simR','loc_simRR', 'loc_simL', 'loc_simLL')#recreating the list data
#locDict = {}
#for i in locList:
#    locDict[i] = pm.ls(i[:3] + '_sim' + i[3:])

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
    elif i[2:5] == 'cM':
        pm.transformLimits(j, rotationX = [-5, 90], rotationY = [-45, 45], rotationZ = [-15, 15], erx = [True, True], ery = [True, True], erz = [True, True])
    elif i[2:5] == 'cL':
        pm.transformLimits(j, rotationX = [-5, 90], rotationY = [-45, 45], rotationZ = [-35, 45], erx = [True, True], ery = [True, True], erz = [True, True])

#main sims
for i in jointList:
    pm.select(i) #selecting so it is parented to parent joint
    sim = pm.joint(name = 'sim' + i[5:], position = pm.xform('loc_sim'+i[5:], query = True, worldSpace = True, translation = True), radius = 1.5)
    jointList[i] = sim
    if i[5:] == 'LL' or i[5:] == 'RR':
        print('re-orient' + i)
        pm.joint(i, edit = True, orientJoint = 'xyz', secondaryAxisOrient = 'zup', zeroScaleOrient = True) #orienting joint so it move appropriately from UpperArm2
        


 
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
        pm.joint(trigoJoint[0], edit = True, orientJoint = 'xyz', secondaryAxisOrient = 'zup', zeroScaleOrient = True) #orienting joint so it move appropriately from UpperArm2
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

pm.delete(locList, locSimList) #deleting unnecessary stuff used to create the rig

if charaHeight == 1:#importing mantle Mesh
    cmds.file('K:\design\maya\data\tool\scData\Mant\mantMesh\mantMesh150.ma', i = True)
elif charaHeight == 2:
    cmds.file('K:\design\maya\data\tool\scData\Mant\mantMesh\mantMesh160.ma', i = True)
elif charaHeight == 3:
    cmds.file('K:\design\maya\data\tool\scData\Mant\mantMesh\mantMesh160.ma', i = True)#adjust address later
elif charaHeight == 4:
    cmds.file('K:\design\maya\data\tool\scData\Mant\mantMesh\mantMesh160.ma', i = True)#adjust address later

if not charaHeight == 0:
    pm.skinCluster(pm.listRelatives(mantleParent), mantleParent, 'MantDummy_Mesh', toSelectedBones = True)
    pm.select('MantDummy_Mesh')
    mel.eval('source kkCharaSetup;kkCharaSetup_charaWeight_r;')#imports weights from data embedded inside already
