'''
EKKO sleeve script 
2017 12 25

the script will attempt to recreate all bones, connections and constraints procedurally.

create a pair of delay/drag controllers and test mesh to be imported in

please take note when painting weights
DO NOT PAINT WITH ORIGIN, but with the 

'''
import pymel.core as pm
import maya.cmds as cmds
import maya.mel as mel

def sleeveCreate():
    
    cmds.file('K:/design/maya/data/tool/scData/Sleeve_Install/sleeve_mesh.ma', i = True) #
    pm.xform(pm.ls(sl = True), rotatePivot = [-57.014295, 126.663641, -0.458615], scalePivot = [-57.014295, 126.663641, -0.458615], preserve = True)
    pm.xform(pm.ls(sl = True), rotatePivot = [57.014295, 126.663641, -0.458615], scalePivot = [57.014295, 126.663641, -0.458615], preserve = True)
    pm.xform('L_sleeve_mesh', translation = pm.xform('L_hand', query = True, translation = True, ws = True))
    pm.xform('R_sleeve_mesh', translation = pm.xform('R_hand', query = True, translation = True, ws = True))
    pm.makeIdentity('L_sleeve_mesh', 'R_sleeve_mesh', translate = True, rotate = True, apply = True)
    pm.xform('L_sleeve_mesh', 'R_sleeve_mesh', ztp = True)
    pm.bakePartialHistory('L_sleeve_mesh', 'R_sleeve_mesh', prePostDeformers = True, preDeformers = True)
    
    #[(0, 2, 0), (1, 0, -1), (-1, 0, -1), (0, 2, 0), (-1, 0, 1), (1, 0, 1), (0, 2, 0), (1, 0, -1), (1, 0, 1), (-1, 0, 1), (-1, 0, -1)], knot = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    #creating controller for sleeve attributes
    LsleeveAttr = pm.curve(name = 'L_sleeveAttr', degree = 1, point = [(0, 2, 0), (1, 0, -1), (-1, 0, -1), (0, 2, 0), (-1, 0, 1), (1, 0, 1), (0, 2, 0), (1, 0, -1), (1, 0, 1), (-1, 0, 1), (-1, 0, -1)], knot = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    pm.xform(LsleeveAttr, translation = (44, 139.5, -11), scale = (3,3,3))
    pm.addAttr(LsleeveAttr, longName = 'Drag', minValue = 0, defaultValue = 5, attributeType = 'float', keyable = True)
    pm.addAttr(LsleeveAttr, longName = 'Cycle', minValue = 0, maxValue = 1, defaultValue = 0, attributeType = 'short', keyable = True)
    pm.addAttr(LsleeveAttr, longName = 'Speed', minValue = -30, maxValue = 0, defaultValue = 0, attributeType = 'short', keyable = True)
    pm.setAttr(LsleeveAttr.tx, channelBox = False, keyable = False)
    pm.setAttr(LsleeveAttr.ty, channelBox = False, keyable = False)
    pm.setAttr(LsleeveAttr.tz, channelBox = False, keyable = False)
    pm.setAttr(LsleeveAttr.rx, channelBox = False, keyable = False)
    pm.setAttr(LsleeveAttr.ry, channelBox = False, keyable = False)
    pm.setAttr(LsleeveAttr.rz, channelBox = False, keyable = False)
    pm.setAttr(LsleeveAttr.sx, channelBox = False, keyable = False)
    pm.setAttr(LsleeveAttr.sy, channelBox = False, keyable = False)
    pm.setAttr(LsleeveAttr.sz, channelBox = False, keyable = False)
    pm.setAttr(LsleeveAttr.v, channelBox = False, keyable = False)
    pm.parent(LsleeveAttr, 'L_elbow_ctrl')
    
    RsleeveAttr = pm.curve(name = 'R_sleeveAttr', degree = 1, point = [(0, 2, 0), (1, 0, -1), (-1, 0, -1), (0, 2, 0), (-1, 0, 1), (1, 0, 1), (0, 2, 0), (1, 0, -1), (1, 0, 1), (-1, 0, 1), (-1, 0, -1)], knot = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    pm.xform(RsleeveAttr, translation = (-44, 139.5, -11), scale = (3,3,3))
    pm.addAttr(RsleeveAttr, longName = 'Drag', minValue = 0, defaultValue = 5, attributeType = 'float', keyable = True)
    pm.addAttr(RsleeveAttr, longName = 'Cycle', minValue = 0, maxValue = 1, defaultValue = 0, attributeType = 'short', keyable = True)
    pm.addAttr(RsleeveAttr, longName = 'Speed', minValue = -30, maxValue = 0, defaultValue = 0, attributeType = 'short', keyable = True)
    pm.setAttr(RsleeveAttr.tx, channelBox = False, keyable = False)
    pm.setAttr(RsleeveAttr.ty, channelBox = False, keyable = False)
    pm.setAttr(RsleeveAttr.tz, channelBox = False, keyable = False)
    pm.setAttr(RsleeveAttr.rx, channelBox = False, keyable = False)
    pm.setAttr(RsleeveAttr.ry, channelBox = False, keyable = False)
    pm.setAttr(RsleeveAttr.rz, channelBox = False, keyable = False)
    pm.setAttr(RsleeveAttr.sx, channelBox = False, keyable = False)
    pm.setAttr(RsleeveAttr.sy, channelBox = False, keyable = False)
    pm.setAttr(RsleeveAttr.sz, channelBox = False, keyable = False)
    pm.setAttr(RsleeveAttr.v, channelBox = False, keyable = False)
    pm.parent(RsleeveAttr, 'R_elbow_ctrl')
    
    
    pm.select(d = True) #deselect everything first
    #create a loop to create joints and move them into the right position
    jointNames = ['forearm1', 'hand', 'upperarm2']
    sideList = ['L_', 'R_']
    allList = []
    
    for i in sideList:
        for j in jointNames:
            allList.append(i + j)
    print allList
    
    sleeveGroup = pm.group(name = 'Sleeve',empty = True) #creating empty sleeve Group
    
    sleeveJoints = []
    for i in allList:
    
        #loop
        #creating joints and moving them into position
        if i.find('forearm') != -1:
            jointName = i.replace('forearm1', 'elbow')
        elif i.find('upperarm2') != -1:
            jointName = i.replace('upperarm2', 'UpperArm')
        else:
            jointName = i.replace('hand', 'wrist')
    
        
        j = pm.joint(p = pm.xform(i, q = True, translation = True, worldSpace = True), name = jointName, roo = 'xzy')
        sleeveJoints.append(j)
        pm.parent(j, world = True)
        if i.find('L_upperarm2') != -1:
            pm.move(11.613, 0, 0, j, relative = True) #translate x to 17.613
        elif i.find('R_upperarm2') != -1:
            pm.move(-11.613, 0, 0, j, relative = True) #translate x to -17.613
        
        #apply constraint to joints as part of loop
        pm.parentConstraint(i, j, mo = True, skipRotate = ['x'])
        #This chunk below is to create a flip check that automatically flips the joint X axis by 180 whenever it detects a gimbal pop
        #this first part creates the necessary elements
        jointDupe = pm.duplicate(j, name = j + '_dupe', po = True)
        if jointDupe[0].find('L_UpperArm') != -1:
            pm.move(10.0, 0, 0, jointDupe, relative = True) #translate x to 17.613
        if jointDupe[0].find('R_UpperArm') != -1:
            pm.move(-10.0, 0, 0, jointDupe, relative = True) #translate x to 17.613
        jointFlipCheck = pm.duplicate(jointDupe, name = j + '_dupe_check', po = True)
        pm.move(0, 5, 0, jointFlipCheck, relative = True)
        dupeConstr = pm.parentConstraint(i, jointDupe, mo = True, skipRotate = ['x'])
        flipCheckConstr = pm.parentConstraint(jointDupe, jointFlipCheck, mo = True)
        pm.expression(name = j + '_rotateX_Exp', s = "if (%s.translateY < %s.translateY) {\n    %s.rotateX = 0;\n}else {\n    %s.rotateX = 180;}" % (j, jointFlipCheck[0], j, j)) #this part performs adds the necessary expression
        #end addition
        
        pm.parent(j, sleeveGroup) #parenting to sleeveGroup
        pm.parent(jointDupe, sleeveGroup) #parenting to sleeveGroup
        pm.parent(jointFlipCheck, sleeveGroup) #parenting to sleeveGroup
    
    parentDict = dict()
    k = 0
    while k < 6:
        parentDict.update({sleeveJoints[k] : allList[k]})
        k += 1

    #create sleeve chain
    for i in sleeveJoints:
        if i.find('L_') != -1:
            side = 'L_'
        else:
            side = 'R_'
        #create joint origin
        pm.select(i)
        exportOrigin = pm.joint(name = i + '_export', p = (0, 0, 0), relative = True) #creating bone for export
        pm.parent(exportOrigin, parentDict[i]) #parenting export joint to where it belongs
        originJoint = pm.joint(name = i + '_sleeve_origin', p = (0, 0, 0), relative = True)    #name = str(i[0]) + 'origin' 
        pm.parent(originJoint, w = True)
        
        #create joint sim  offset by 33.22, name = pm.ls(i)[0]
        sim = pm.joint(name = i + '_sleeve_sim', p = (0, -33.22, 0), relative = True)    #name = str(i[0]) + 'sim'
        
        exportSim = pm.joint(name = i + '_export_sim', p = (0, 0, 0), relative = True) #creating bone for export
        pm.parent(exportSim, exportOrigin) #parenting exportSim to exportOrigin
        
        #create joint unity offset by 31.758
        
        pm.joint(name = i + '_0___yure__IS__ST_02__DR_001__SF_0_m01_0', p = (0, -1, 0), relative = True)    
        
        #create joint end for unity
        pm.joint(name = i + '_x', p = (0, -30.758, 0), relative = True)
        
        #apply constraint to origin joint
        pm.parentConstraint(i, originJoint, mo = True)
        
        ik = pm.ikHandle(startJoint = originJoint, endEffector = sim, name = i + '_ikHandle', solver = 'ikRPsolver') #create IK for both sides
    
        #create sim locators
        locator = pm.spaceLocator(name = i + '_locator_sim')
        pm.xform(locator, translation = pm.xform(pm.ls(sim), query = True, translation = True, worldSpace = True))
        #apply expressions to locators
        #DO NOT FORGET TO INCLUDE LINKS TO DRAG/delay
        pm.expression(name = i + '_simExp', s = "$f = `currentTime -q`;\n $lastposX = `getAttr -t ($f - %s.Drag) %s.translateX`;\n %s.translateX = %s.translateX - (%s.translateX - $lastposX);" % (side + 'sleeveAttr', i, i + '_locator_sim', i, i)) #PLEASE CHECK EXPRESSION BEFORE SUBMITTING
        pm.expression(name = i + '_simExp', s = "$f = `currentTime -q`;\n$posY = %s.translateY - 33.22;\n $lastposY = `getAttr -t ($f - %s.Drag) %s.translateY` - 33.22;\n%s.translateY = ($posY - ($posY - $lastposY))/1.5;" % (i ,side + 'sleeveAttr', i, i + '_locator_sim')) #PLEASE CHECK EXPRESSION BEFORE SUBMITTING
        pm.expression(name = i + '_simExp', s = "$excep = 0;\nif (%ssleeveAttr.Cycle == 1) {\n	$excep = %ssleeveAttr.Speed;\n}$f = `currentTime -q`;\n $lastposZ = `getAttr -t ($f - %s.Drag) %s.translateZ`;\n %s.translateZ = %s.translateZ - (%s.translateZ - $lastposZ) + $excep;" % (side, side, side + 'sleeveAttr', i, i + '_locator_sim', i, i)) #PLEASE CHECK EXPRESSION BEFORE SUBMITTING
        
        pm.expression(name = i + '_simExp', s = "$f = `currentTime -q`;\n $lastrotY = `getAttr -t ($f - %s.Drag) %s.rotateY`;\n %s.rotateY = %s.rotateY - (%s.rotateY - $lastrotY);" % (side + 'sleeveAttr', i, i + '_locator_sim', i, i)) #PLEASE CHECK EXPRESSION BEFORE SUBMITTING
        #constraint IK handles to sim
        pm.parentConstraint(locator, ik[0], mo = False)
        
        
        
        #this point onwards is to create the polevector for the sleeves
        if not pm.ls('%ssleeve_pv' %side):
            poleVector = pm.spaceLocator(name = side + 'sleeve_pv')
            pm.xform(poleVector, translation = pm.xform(pm.ls(originJoint), query = True, translation = True, worldSpace = True))
            if side == 'L_':
                pm.move(-13, 0, 0, poleVector, relative = True)
            else:
                pm.move(13, 0, 0, poleVector, relative = True)
            pm.parent(poleVector, '%sforearm1' %side)
            #parent polevector to bone
            
            pm.poleVectorConstraint(poleVector, ik[0])
        else:
            pm.poleVectorConstraint(poleVector, ik[0])
    
        #write an if else statement for the 2nd polevector for upper arm
        if not pm.ls('%supper_pv' %side):
            poleVectorUpperArm = pm.spaceLocator(name = side + 'upper_pv')
            pm.xform(poleVectorUpperArm, translation = pm.xform(pm.ls('%supperarm2' %side), query = True, translation = True, worldSpace = True))
            pm.parent(poleVectorUpperArm, '%supperarm2' %side)
        if i.find('UpperArm') != -1:
            pm.poleVectorConstraint(poleVectorUpperArm, ik[0])
            pm.poleVectorConstraint(poleVector, ik[0], remove = True)
        
        #creating parent constraints to connect the motions of the sleeve simulation and the export bones
        pm.parentConstraint(i, exportOrigin, mo = True) 
        pm.parentConstraint(sim, exportSim, mo = True) 
        
        
        pm.parent(originJoint, exportOrigin, locator, ik[0], sleeveGroup)#sleeveGroup parent
        
        
    pm.parent('R_sleeve_mesh', 'L_sleeve_mesh', 'Poly')
    fileRead = open('K:/design/maya/data/tool/scData/Sleeve_Install/sleeve/Sleeve_weight.weightMap', 'r')
    fileRead.seek(0)
    boneList = dict()
    fileRead.readline()
    fileRead.readline()
    for i in fileRead.readlines():
        x = i.split()
        if boneList.has_key(x[0]):
            boneList[x[0]].append(x[1])
        else:
            boneList[x[0]] = [x[1]]
    print boneList
    keys = boneList.keys()
    for i in keys:
        print i
        pm.skinCluster(i, boneList[i], tsb = True)
    fileRead.close()
    mel.eval('source kkCharaSetup;')
    pm.select('L_sleeve_mesh')
    mel.eval('kkCharaSetup_charaWeight_r;')
    pm.select('R_sleeve_mesh')
    mel.eval('kkCharaSetup_charaWeight_r;')
    
    pm.parent(sleeveGroup, 'CharaA')
    