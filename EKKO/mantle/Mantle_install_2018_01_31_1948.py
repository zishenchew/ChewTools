# encoding: utf-8
'''
_______________________________________________
EKKO mantle set up tool

_______________________________________________
'''

import pymel.core as pm
import maya.mel as mel
import maya.cmds as cmds

#create 1 fixed set of bones, which will extend based on the character height

def mantleCreate(charaHeight = 2): #default 2, 160cm height
    
    curTime = pm.currentTime(query = True)
    
    if charaHeight == 5: #5 = motion character
        #create an exception to create key at the -100f + offset the rig into the right position
        pm.currentTime(-100, edit = True)
        mel.eval('source kkCharaSetup;\nkkCharaSetup();\nkkCharaBindPose_ex body;') #calling t-pose script from kkTools
        
    
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
    heightPosition['1sim'] = [0, 77.696 -9.781], [-19, 77.696, -9.919], [-28, 120.1, -1], [19, 77.696, -9.919], [28, 120.1, -1]
    heightPosition['2'] = [8.17948246602115e-16, 126.43254364390185, -8.830608530289298], [-10, 124.043, -9.221], [-14, 129, -1.6], [10, 124.043, -9.221], [14, 129, -1.6] #2 = 160cm
    heightPosition['2sim'] = [0, 70, -11.002], [-21.549, 80, -10.513], [-31, 129, -1.6], [21.549, 80, -10.513], [31, 129, -1.6]
    heightPosition['3'] = [0, 133.789, -13.546], [-11, 131.4, -13.936], [-15, 136.357, -4.721], [11, 131.4, -13.936], [15, 136.357, -4.721] #3 = 170cm
    heightPosition['3sim'] = [0, 77.357, -15.717], [-25.5, 79, -15.228], [-32, 136.357, -4.721], [25.5, 79, -15.228], [32, 136.357, -4.721]
    heightPosition['4'] = [0, 157.786, -14.305], [-12, 155, -14.695], [-20, 160.353, -4.5], [12, 155, -14.695], [20, 160.353, -4.5] #4 = 180cm
    heightPosition['4sim'] = [0, 101.353, -16.476], [-25.75, 100, -15.987], [-37, 160.353, -4.5], [25.75, 100, -15.987], [37, 160.353, -4.5]
    heightPosition['5'] = [8.17948246602115e-16, 126.43254364390185, -8.830608530289298], [-10, 124.043, -9.221], [-14, 129, -1.6], [10, 124.043, -9.221], [14, 129, -1.6] #5 = 160cm, same as 160 but for motion
    heightPosition['5sim'] = [0, 70, -11.002], [-21.549, 80, -10.513], [-31, 129, -1.6], [21.549, 80, -10.513], [31, 129, -1.6]
    
    
    #translating the locators to their position
    pm.xform('locM', ws = True, translation = heightPosition[str(charaHeight)][0], scale = [3, 3, 3])
    pm.xform('locR', ws = True, translation = heightPosition[str(charaHeight)][1], scale = [3, 3, 3])
    pm.xform('locRR', ws = True, translation = heightPosition[str(charaHeight)][2], scale = [3, 3, 3])
    pm.xform('locL', ws = True, translation = heightPosition[str(charaHeight)][3], scale = [3, 3, 3])
    pm.xform('locLL', ws = True, translation = heightPosition[str(charaHeight)][4], scale = [3, 3, 3])
    
    
    
    locList = [locM, locR, locRR, locL, locLL]
    locDict = {}
    locSimList = []
    
    for i in locList:
        sim = pm.duplicate(i, name = i[:3] + '_sim' + i[3:])
        locSimList.append(sim[0])
        locDict[i] = sim
    
    #translating the sim locators to their positions
    pm.xform('loc_simM', ws = True, translation = heightPosition[str(charaHeight) + 'sim'][0], scale = [3, 3, 3])
    pm.xform('loc_simR', ws = True, translation = heightPosition[str(charaHeight) + 'sim'][1], scale = [3, 3, 3])
    pm.xform('loc_simRR', ws = True, translation = heightPosition[str(charaHeight) + 'sim'][2], scale = [3, 3, 3])
    pm.xform('loc_simL', ws = True, translation = heightPosition[str(charaHeight) + 'sim'][3], scale = [3, 3, 3])
    pm.xform('loc_simLL', ws = True, translation = heightPosition[str(charaHeight) + 'sim'][4], scale = [3, 3, 3])
    
    if charaHeight == 5:
        pm.xform(locList, locSimList, translation = [0, 2.5, -3], relative = True, worldSpace = True)
    
    
    #____________________________________________________________________________________________________________________________________________________
    
    mantContr = mel.eval('curve -d 1 -p -0.5 1 0.866025 -p 0.5 1 0.866025 -p 0.5 -1 0.866025 -p 1 -1 0 -p 1 1 0 -p 0.5 1 -0.866025 -p 0.5 -1 -0.866025 -p -0.5 -1 -0.866026 -p -0.5 1 -0.866026 -p -1 1 -1.5885e-007 -p -1 -1 -1.5885e-007 -p -0.5 -1 0.866025 -p -0.5 1 0.866025 -p -1 1 -1.5885e-007 -p -0.5 1 -0.866026 -p 0.5 1 -0.866025 -p 1 1 0 -p 0.5 1 0.866025 -p 0.5 -1 0.866025 -p -0.5 -1 0.866025 -p -1 -1 -1.5885e-007 -p -0.5 -1 -0.866026 -p 0.5 -1 -0.866025 -p 1 -1 0 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -k 16 -k 17 -k 18 -k 19 -k 20 -k 21 -k 22 -k 23 -n "controller1" ;')
    mantContr = pm.rename(mantContr, 'mantle_Control')
    pm.addAttr(mantContr, longName = 'Drag', attributeType = 'short', keyable = True, defaultValue = 5, minValue = 0) #adding drag attribute
    #hiding attributes on mantleControl
    pm.setAttr(mantContr + '.translateX', keyable = False)
    pm.setAttr(mantContr + '.translateY', keyable = False)
    pm.setAttr(mantContr + '.translateZ', keyable = False)
    pm.setAttr(mantContr + '.rotateX', keyable = False)
    pm.setAttr(mantContr + '.rotateY', keyable = False)
    pm.setAttr(mantContr + '.rotateZ', keyable = False)
    pm.setAttr(mantContr + '.scaleX', keyable = False)
    pm.setAttr(mantContr + '.scaleY', keyable = False)
    pm.setAttr(mantContr + '.scaleZ', keyable = False)
    
    
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
            pm.transformLimits(j, rotationX = [-5, 90], rotationY = [-90, 45], rotationZ = [-45, 25], erx = [True, True], ery = [True, True], erz = [True, True])
        elif i[2:5] == 'cM':
            pm.transformLimits(j, rotationX = [-5, 90], rotationY = [-45, 45], rotationZ = [-50, 50], erx = [True, True], ery = [True, True], erz = [True, True])
        elif i[2:5] == 'cL':
            pm.transformLimits(j, rotationX = [-5, 90], rotationY = [-45, 90], rotationZ = [-25, 45], erx = [True, True], ery = [True, True], erz = [True, True])
    
    #main sims
    for i in jointList:
        pm.select(i) #selecting so it is parented to parent joint
        sim = pm.joint(name = 'sim' + i[5:], position = pm.xform('loc_sim'+i[5:], query = True, worldSpace = True, translation = True), radius = 1.5)
        jointList[i] = sim
        pm.xform(pm.ls(sl = True)[0], translation = (pm.getAttr(pm.ls(sl = True)[0].translate) * 0.5)) #this shortens the length of the sim joint by half
        if i[5:] == 'LL' or i[5:] == 'RR':#orienting joint so it move appropriately from UpperArm2
            print('re-orient' + i)
            pm.joint(i, edit = True, orientJoint = 'xyz', secondaryAxisOrient = 'zup', zeroScaleOrient = True) 
            
    
    
    
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
        pm.xform(spaceLoc, ws = True, translation = pm.xform('sim' + i[5:], query = True, translation = True, ws = True))#moving it to the right place
        
        #creating expression to drive the SimLoc's translations
        pm.expression(object = spaceLoc, name = spaceLoc + '_translationExp', string = '$f = `currentTime -q`;\n$lastposX = `getAttr -t ($f - mantle_Control.Drag) %s.translateX`;\n%s.translateX = %s.translateX - (%s.translateX - $lastposX) + %s;\n$lastposY = `getAttr -t ($f - mantle_Control.Drag) %s.translateY`;\n%s.translateY = %s.translateY - (%s.translateY - $lastposY) + %s;\n$lastposZ = `getAttr -t ($f - mantle_Control.Drag) %s.translateZ`;\n%s.translateZ = %s.translateZ - (%s.translateZ - $lastposZ) + %s;' %(cal[0], spaceLoc, cal[0], cal[0], pm.getAttr('sim'+i[5]+'.translateX'), cal[0], spaceLoc, cal[0], cal[0], pm.getAttr('sim'+i[5]+'.translateY'), cal[0], spaceLoc, cal[0], cal[0], pm.getAttr('sim'+i[5]+'.translateZ')))
        
        '''
        '$f = `currentTime -q`;\n
        $lastposX = `getAttr -t ($f - mantle_Control.Drag) %s.translateX`;\n
        %s.translateX = %s.translateX - (%s.translateX - $lastposX);\n
        $lastposY = `getAttr -t ($f - mantle_Control.Drag) %s.translateY`;\n
        %s.translateY = %s.translateY - (%s.translateY - $lastposY) - 25.627;\n
        $lastposZ = `getAttr -t ($f - mantle_Control.Drag) %s.translateZ`;\n
        %s.translateZ = %s.translateZ - (%s.translateZ - $lastposZ);' %(cal[0], spaceLoc, cal[0], cal[0], cal[0], spaceLoc, cal[0], cal[0], cal[0], spaceLoc, cal[0], cal[0])
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
    
    
    #create the constraints for calcDriver -> calc
    for i in calcList:
        pm.parentConstraint(i + 'Driver', i, mo = False)
    
    #create IK
    
    for i in pm.listRelatives('mantleGroup', type = 'transform'):#constraining IKs to calc locators
        if i.find('Loc') != -1:
            ik = pm.ikHandle(name = 'ikHandle' + i[7], sj = 'joint' + i[7], ee = pm.listRelatives('joint' + i[7])[0], solver = 'ikRPsolver')[0]
            pm.transformLimits(ik, translationZ = [-100, -1], etz = [False, True]) #setting a limit on the z transform of the IK handle, so it won't go past the body and penetrate
            pm.setAttr(ik+'.poleVectorX', 0) #adjusting the polevectors to 0, so it won't flip and be weird
            pm.setAttr(ik+'.poleVectorY', 0)
            pm.setAttr(ik+'.poleVectorZ', 0)
            pm.parent(ik, mantleParent)
            pm.parentConstraint(i, ik, mo = False)
    
    pm.parentConstraint('L_upperarm2', 'jointLL', mo = True)
    pm.parentConstraint('R_upperarm2', 'jointRR', mo = True)
    
    pm.delete(locList, locSimList) #deleting unnecessary stuff used to create the rig
    
    if charaHeight == 1:#importing mantle Mesh
        cmds.file('K:/design/maya/data/tool/scData/Mant/mantMesh/mantMesh150.ma', i = True)
    elif charaHeight == 2:
        cmds.file('K:/design/maya/data/tool/scData/Mant/mantMesh/mantMesh160.ma', i = True)
    elif charaHeight == 3:
        cmds.file('K:/design/maya/data/tool/scData/Mant/mantMesh/mantMesh170.ma', i = True)
    elif charaHeight == 4:
        cmds.file('K:/design/maya/data/tool/scData/Mant/mantMesh/mantMesh180.ma', i = True)
    else:
        cmds.file('K:/design/maya/data/tool/scData/Mant/mantMesh/mantMesh160.ma', i = True)
        pm.xform('mantMesh', translation = [0, 2.5, -3], worldSpace = True, relative = True)
    
    if not charaHeight == 0:
        pm.skinCluster(pm.listRelatives(mantleParent), mantleParent, 'mantMesh', toSelectedBones = True)
        pm.select('mantMesh')
        mel.eval('source kkCharaSetup;kkCharaSetup_charaWeight_r;')#imports weights from data embedded inside already
        
    if charaHeight == 5:
        pm.select(deselect = True)
        mel.eval('global string $pickrPrefix="";abxPickerSelect " L_knee_ctrl R_knee_ctrl L_hand_ctrl R_elbow_ctrl R_hand_ctrl L_elbow_ctrl head R_wrist_ctrl R_shoulder L_wrist_ctrl L_shoulder neck spine2 spine1 waist hips pelvis R_foot_ctrl L_foot_ctrl L_toe_ctrl R_toe_ctrl";')
        pm.cutKey(time = -100)
        pm.currentTime(0, edit = True)
        
        pm.currentTime(curTime, edit = True) #end
    pm.select(deselect = True)
    
    #outliner management
    pm.xform(mantContr, translation = pm.xform(mantleParent, query = True, worldSpace = True, translation = True), worldSpace = True) #moving Mantle Control to 
    pm.xform(mantContr, translation = [0, 0, -5], worldSpace = True, relative = True)  #offset to the back a little
    pm.parentConstraint(mantleParent, mantContr, mo = True) #constraining controller to mantle parent
    pm.parent(mantContr, 'mantMesh', 'CharaA')
    
    print(u'EKKO マントリッグインストールしました。')