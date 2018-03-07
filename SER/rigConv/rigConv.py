# encoding: utf-8
'''
########################################################################################################################
  SER rig converter
  SER リグコンバータ
  
  担当者：チュー
  2018/03/01
  
Creates a simple rig from the current humanIK
the tool first reverts character back to a T-Pose using a function from animPose script, then it creates 

HumanIK　から簡単なリグを作ります。
HumanIK は色々な落ちちゃう場合があるので、新しいリグを作ります。もしMayaはずっと落ちちゃったら、このツールを試してください

########################################################################################################################
'''
import pymel.core as pm
import maya.OpenMayaAnim as animAPI
import maya.mel as mel
import AnimPose_001


def resetCharTPose():
    #reading data from pose
    tPose = []
    dummyData = r'\\p.sv\Prism\project\SER\user\chew\ref\animPose\defaultPose_controlRig.pose'
    readFile = open(dummyData, 'r')
    for i in readFile:
        tPose.append(i.rstrip('\n'))
    readFile.close()
    
    for i in tPose:
        split = i.split()
        pm.xform(split[0], translation = [split[1], split[2], split[3]], rotation = [split[4], split[5], split[6]])

def createContr():
    #check if character has been IK'ed
    if pm.objExists('ik_Hand_R'):
        return pm.confirmDialog(title = 'SER Constraint', message = u'キャラクターリグ既にコンバートしました')
        
    #setting T-pose in frame -10
    pm.currentTime(-10, edit = True, update = True)
    resetCharTPose()#sets TPose
    
    #creating hand controls
    ikRH = mel.eval('curve -d 1 -p 0.5 0.5 0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 -0.5 -0.5 -p 0.5 -0.5 -0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 0.5 0.5 -p 0.5 0.5 0.5 -p 0.5 -0.5 0.5 -p 0.5 -0.5 -0.5 -p -0.5 -0.5 -0.5 -p -0.5 -0.5 0.5 -p 0.5 -0.5 0.5 -p -0.5 -0.5 0.5 -p -0.5 0.5 0.5 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -n "ik_Hand_R" ;')
    ikLH = mel.eval('curve -d 1 -p 0.5 0.5 0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 -0.5 -0.5 -p 0.5 -0.5 -0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 0.5 0.5 -p 0.5 0.5 0.5 -p 0.5 -0.5 0.5 -p 0.5 -0.5 -0.5 -p -0.5 -0.5 -0.5 -p -0.5 -0.5 0.5 -p 0.5 -0.5 0.5 -p -0.5 -0.5 0.5 -p -0.5 0.5 0.5 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -n "ik_Hand_L" ;')
    pm.xform(ikRH, translation = pm.xform('Character1_Ctrl_RightWristEffector', q = True, ws = True, translation = True), rotation = pm.xform('Character1_Ctrl_RightWristEffector', q = True, ws = True, rotation = True), scale = [10, 10, 10], ws = True)
    pm.xform(ikLH, translation = pm.xform('Character1_Ctrl_LeftWristEffector', q = True, ws = True, translation = True), rotation = pm.xform('Character1_Ctrl_LeftWristEffector', q = True, ws = True, rotation = True), scale = [10, 10, 10], ws = True)
    pm.parentConstraint('Character1_Ctrl_RightWristEffector', ikRH, mo = False) #constraint to bake the transform data
    pm.parentConstraint('Character1_Ctrl_LeftWristEffector', ikLH, mo = False) #constraint to bake the transform data
    
    #creating feet controls
    ikRFoot = mel.eval('curve -d 1 -p 0.5 0.5 0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 -0.5 -0.5 -p 0.5 -0.5 -0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 0.5 0.5 -p 0.5 0.5 0.5 -p 0.5 -0.5 0.5 -p 0.5 -0.5 -0.5 -p -0.5 -0.5 -0.5 -p -0.5 -0.5 0.5 -p 0.5 -0.5 0.5 -p -0.5 -0.5 0.5 -p -0.5 0.5 0.5 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -n "ik_Foot_R" ;')
    ikLFoot = mel.eval('curve -d 1 -p 0.5 0.5 0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 -0.5 -0.5 -p 0.5 -0.5 -0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 0.5 0.5 -p 0.5 0.5 0.5 -p 0.5 -0.5 0.5 -p 0.5 -0.5 -0.5 -p -0.5 -0.5 -0.5 -p -0.5 -0.5 0.5 -p 0.5 -0.5 0.5 -p -0.5 -0.5 0.5 -p -0.5 0.5 0.5 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -n "ik_Foot_L" ;')
    pm.xform(ikRFoot, translation = pm.xform('Character1_Ctrl_RightAnkleEffector', q = True, ws = True, translation = True), rotation = pm.xform('Character1_Ctrl_RightAnkleEffector', q = True, ws = True, rotation = True), scale = [10, 10, 10], ws = True)
    pm.xform(ikLFoot, translation = pm.xform('Character1_Ctrl_LeftAnkleEffector', q = True, ws = True, translation = True), rotation = pm.xform('Character1_Ctrl_LeftAnkleEffector', q = True, ws = True, rotation = True), scale = [10, 10, 10], ws = True)
    pm.parentConstraint('Character1_Ctrl_RightAnkleEffector', ikRFoot, mo = False) #constraint to bake the transform data
    pm.parentConstraint('Character1_Ctrl_LeftAnkleEffector', ikLFoot, mo = False) #constraint to bake the transform data
    
    #creating COG control
    COG = mel.eval('curve -d 1 -p 1 0 -1 -p -1 0 -1 -p -1 0 1 -p 1 0 1 -p 1 0 -1 -k 0 -k 1 -k 2 -k 3 -k 4 -n "COG" ;')
    pm.xform(COG, translation = pm.xform('Character1_Ctrl_HipsEffector', q = True, ws = True, translation = True), rotation = pm.xform('Character1_Ctrl_RightAnkleEffector', q = True, ws = True, rotation = True), scale = [20, 20, 20], ws = True)
    pm.parentConstraint('Character1_Ctrl_HipsEffector', COG, mo = False) #constraint to bake the transform data
    
    pvRElb = pm.spaceLocator(name = 'pv_RightElbow')
    pm.xform(pvRElb, ws = True, translation = pm.xform('Character1_Ctrl_RightForeArm', q = True, translation = True, ws = True))#moving polevectors to the right place
    pm.xform(pvRElb, ws = True, translation = (0, 0, -50), relative = True) #offsetting
    pvLElb = pm.spaceLocator(name = 'pv_LeftElbow')
    pm.xform(pvLElb, ws = True, translation = pm.xform('Character1_Ctrl_LeftForeArm', q = True, translation = True, ws = True))#moving polevectors to the right place
    pm.xform(pvLElb, ws = True, translation = (0, 0, -50), relative = True) #offsetting
    pvRKnee = pm.spaceLocator(name = 'pv_RightKnee')
    pm.xform(pvRKnee, ws = True, translation = pm.xform('Character1_Ctrl_RightLeg', q = True, translation = True, ws = True))#moving polevectors to the right place
    pm.xform(pvRKnee, ws = True, translation = (0, 0, 50), relative = True) #offsetting
    pvLKnee = pm.spaceLocator(name = 'pv_LeftKnee')
    pm.xform(pvLKnee, ws = True, translation = pm.xform('Character1_Ctrl_LeftLeg', q = True, translation = True, ws = True))#moving polevectors to the right place
    pm.xform(pvLKnee, ws = True, translation = (0, 0, 50), relative = True) #offsetting
    
    contrList = [ikRH, ikLH, ikRFoot, ikLFoot, COG, pvRElb, pvLElb, pvRKnee, pvLKnee]
    contrDict = {
        ikRH : 'Character1_Ctrl_RightWristEffector',
        ikLH : 'Character1_Ctrl_LeftWristEffector',
        ikRFoot : 'Character1_Ctrl_RightAnkleEffector',
        ikLFoot : 'Character1_Ctrl_LeftAnkleEffector',
        COG : 'Character1_Ctrl_HipsEffector',
        pvRElb : 'Character1_Ctrl_RightForeArm',
        pvLElb : 'Character1_Ctrl_LeftForeArm',
        pvRKnee : 'Character1_Ctrl_RightLeg',
        pvLKnee : 'Character1_Ctrl_LeftLeg'
    }
    
    for i in contrList:
        pm.delete(pm.listRelatives(i, type = 'constraint')) #deleting constraints to freeze transform
    #freezing transformations
    pm.makeIdentity(contrList, apply = True)
    
    ##############################################################################################################################################################################

    #reconstraining so data baking can be done
    pm.parentConstraint('Character1_Ctrl_RightWristEffector', ikRH, mo = False) #constraint to bake the transform data
    pm.parentConstraint('Character1_Ctrl_LeftWristEffector', ikLH, mo = False) #constraint to bake the transform data
    pm.parentConstraint('Character1_Ctrl_RightAnkleEffector', ikRFoot, mo = False) #constraint to bake the transform data
    pm.parentConstraint('Character1_Ctrl_LeftAnkleEffector', ikLFoot, mo = False) #constraint to bake the transform data
    pm.parentConstraint('Character1_Ctrl_HipsEffector', COG, mo = False) #constraint to bake the transform data
    
    pm.parentConstraint('Character1_Ctrl_RightForeArm', pvRElb, mo = False) #constraint to bake the transform data
    pm.parentConstraint('Character1_Ctrl_LeftForeArm', pvLElb, mo = False) #constraint to bake the transform data
    pm.parentConstraint('Character1_Ctrl_RightLeg', pvRKnee, mo = False) #constraint to bake the transform data
    pm.parentConstraint('Character1_Ctrl_LeftLeg', pvLKnee, mo = False) #constraint to bake the transform data
    

    for i in pm.listRelatives('Character_Reference', ad = True, type = 'joint'):
        if i[:3] == 'Cha':
            try:
                if pm.keyframe('Character1_Ctrl_' + i[10:], at = 'tx', q = True):
                    for j in pm.keyframe('Character1_Ctrl_' + i[10:], at = 'tx', q = True):
                        pm.currentTime(j, edit = True, update = True)
                        pm.setKeyframe(i)
                elif pm.keyframe('Character1_Ctrl_' + i[10:], at = 'rx', q = True):
                    for j in pm.keyframe('Character1_Ctrl_' + i[10:], at = 'rx', q = True):
                        pm.currentTime(j, edit = True, update = True)
                        pm.setKeyframe(i)
            except:
                pass
    
    #check if there is animation data

    pm.currentTime(0, edit = True, update = True)    
    for i in contrList:
        pm.setKeyframe(i)
        pm.setAttr('%s.blendParent1' %i, 1)
    for i in contrDict:
        for j in pm.keyframe(contrDict[i], q = True, at = 'tx'):
            pm.currentTime(j, edit = True, update = True)
            pm.setKeyframe(i)
    pm.bakeResults(pvRElb, pvLElb, pvRKnee, pvLKnee, simulation = True, time = (animAPI.MAnimControl.minTime().value(), animAPI.MAnimControl.maxTime().value()))
            
    pm.mel.mayaHIKsetRigInput("Character1")#setting back to humanIK
    pm.mel.hikUpdateContextualUI()#updating the humanIK UI
    pm.mel.hikUpdateSourceList()
    
    
#def somethingElse():
    '''
    #redefining controllers
    ikRH = pm.ls('ik_Hand_R')[0]
    ikLH = pm.ls('ik_Hand_L')[0]
    ikRFoot = pm.ls('ik_Foot_R')[0]
    ikLFoot = pm.ls('ik_Foot_L')[0]
    COG = pm.ls('COG')[0]
    
    contrList = [ikRH, ikLH, ikRFoot, ikLFoot, COG]
    contrDict = {
        ikRH : 'Character1_Ctrl_RightWristEffector',
        ikLH : 'Character1_Ctrl_LeftWristEffector',
        ikRFoot : 'Character1_Ctrl_RightAnkleEffector',
        ikLFoot : 'Character1_Ctrl_LeftAnkleEffector',
        COG : 'Character1_Ctrl_HipsEffector'
    }
    '''
    #reverse the constraints on controllers
    for i in contrList:
        pm.delete(pm.listRelatives(i, type = 'constraint'))
    pm.currentTime(-10, edit = True, update = True)
    resetCharTPose()
    
    for i in contrList:
        pm.xform(i, translation = [0, 0, 0,], rotation = [0,0,0], ws = True)
    
    '''
    resetCharTPose()
    #set up IKs
    ikHandleRH = pm.ikHandle(name = 'ikHandleRightHand', sj = 'Character_RightArm', ee = 'Character_RightHand', solver = 'ikRPsolver')[0]
    ikHandleLH = pm.ikHandle(name = 'ikHandleLeftHand', sj = 'Character_LeftArm', ee = 'Character_LeftHand', solver = 'ikRPsolver')[0]
    ikHandleRF = pm.ikHandle(name = 'ikHandleRightFoot', sj = 'Character_RightUpLeg', ee = 'Character_RightFoot', solver = 'ikRPsolver')[0]
    ikHandleLF = pm.ikHandle(name = 'ikHandleLeftFoot', sj = 'Character_LeftUpLeg', ee = 'Character_LeftFoot', solver = 'ikRPsolver')[0]
    '''

def reverseConstraint():
    #redefining controllers
    ikRH = pm.ls('ik_Hand_R')[0]
    ikLH = pm.ls('ik_Hand_L')[0]
    ikRFoot = pm.ls('ik_Foot_R')[0]
    ikLFoot = pm.ls('ik_Foot_L')[0]
    COG = pm.ls('COG')[0]
    pvRElb = pm.ls('pv_RightElbow')[0]
    pvLElb = pm.ls('pv_LeftElbow')[0]
    pvRKnee = pm.ls('pv_RightKnee')[0]
    pvLKnee = pm.ls('pv_LeftKnee')[0]
    
    contrList = [ikRH, ikLH, ikRFoot, ikLFoot, COG, pvRElb, pvLElb, pvRKnee, pvLKnee]
    contrDict = {
        ikRH : 'Character1_Ctrl_RightWristEffector',
        ikLH : 'Character1_Ctrl_LeftWristEffector',
        ikRFoot : 'Character1_Ctrl_RightAnkleEffector',
        ikLFoot : 'Character1_Ctrl_LeftAnkleEffector',
        COG : 'Character1_Ctrl_HipsEffector',
        pvRElb : 'Character1_Ctrl_RightForeArm',
        pvLElb : 'Character1_Ctrl_LeftForeArm',
        pvRKnee : 'Character1_Ctrl_RightLeg',
        pvLKnee : 'Character1_Ctrl_LeftLeg'
    }
    
    
    resetCharTPose()
    #set up IKs
    ikHandleRH = pm.ikHandle(name = 'ikHandleRightHand', sj = 'Character_RightArm', ee = 'Character_RightHand', solver = 'ikSCsolver')[0]
    ikHandleLH = pm.ikHandle(name = 'ikHandleLeftHand', sj = 'Character_LeftArm', ee = 'Character_LeftHand', solver = 'ikSCsolver')[0]
    ikHandleRF = pm.ikHandle(name = 'ikHandleRightFoot', sj = 'Character_RightUpLeg', ee = 'Character_RightFoot', solver = 'ikSCsolver')[0]
    ikHandleLF = pm.ikHandle(name = 'ikHandleLeftFoot', sj = 'Character_LeftUpLeg', ee = 'Character_LeftFoot', solver = 'ikSCsolver')[0]
    
    #pm.parentConstraint('ik_Hand_R', 'ikHandle2', mo = True)#
    pm.parentConstraint(ikRH, 'ikHandleRightHand', mo = True)#
    pm.parentConstraint(ikLH, 'ikHandleLeftHand', mo = True)#
    pm.parentConstraint(ikRFoot, 'ikHandleRightFoot', mo = True)#
    pm.parentConstraint(ikLFoot, 'ikHandleLeftFoot', mo = True)#
    pm.parentConstraint(COG, 'Character_Hips', mo = True)

    pm.parentConstraint(ikRH, 'Character_RightFoot', mo = True)#
    pm.parentConstraint(ikRH, 'Character_LeftFoot', mo = True)#
    '''
    pm.parentConstraint(ikRH, 'Character_RightHand', mo = True)#
    pm.parentConstraint(ikLH, 'Character_LeftHand', mo = True)#
    pm.parentConstraint(ikRFoot, 'Character_RightFoot', mo = True)#
    pm.parentConstraint(ikLFoot, 'Character_LeftFoot', mo = True)#
    
    pm.parentConstraint(COG, 'Character_Hips', mo = True)'''
'''
    pm.poleVectorConstraint(pvRElb, 'ikHandleRightHand' )
    pm.poleVectorConstraint(pvLElb, 'ikHandleLeftHand' )
    pm.poleVectorConstraint(pvRKnee, 'ikHandleRightFoot' )
    pm.poleVectorConstraint(pvLKnee, 'ikHandleLeftFoot' )
'''

def rigMakeUI():
    windowID = 'rigUI'
    if pm.window(windowID, exists = True):
        pm.deleteUI(windowID)
        pm.windowPref( 'WeapCon', remove=True )
    
    #creating window
    pm.window(windowID, title = 'SER Rig | 2018/03/01', widthHeight = (600,100))
    
    #buttons for first row
    rigFrame = pm.frameLayout(label = u'リグツール', labelIndent = 5, width = 590, marginHeight = 5)
    pm.rowLayout( 'row1', nc = 5, width = 400)
    
    conSetup = pm.button( 'controllerSetup', label = u'リグを作る', width = 300, height = 30, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row1', command = 'createContr()' )
    constrainSetup = pm.button( 'constraintSetup', label = u'2', width = 300, height = 30, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row1', command = 'reverseConstraint()' )
    '''
    #buttons for 2nd row
    pm.rowLayout( 'row2', nc = 2, parent = 'columnLayout01' )
    bodySliderGrp = pm.intSliderGrp(field = True, label = u'全身ポーズ', minValue = 0, maxValue = upperLimit - 1, value = 0, adj = 3, columnWidth3 = [100,50,200], width = 525, dragCommand = setPose)
    
    pm.rowLayout( 'row3', nc = 2, parent = 'columnLayout01', width = 590, height = 50)
    pm.columnLayout( 'col_1', width = 100, parent = 'row3')#spacer 
    pm.columnLayout( 'col_2', width = 390, parent = 'row3')
    resetButton = pm.button( 'resetButton', label = u'T　ポーズに', width = 390, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'col_2', command = resetChar )
    
    pm.rowLayout( 'row4', nc = 2, parent = 'columnLayout01', width = 590, height = 50)
    pm.columnLayout( 'col_3', width = 100, parent = 'row4')#spacer 
    pm.columnLayout( 'col_4', width = 390, parent = 'row4')
    resetButton_ctrlRig = pm.button( 'ctrlRigReset', label = u'Control Rig T pose', width = 390, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'col_4', command = resetCharTPose )
    '''
    
    
    pm.showWindow()
    pm.window(windowID, edit = True, widthHeight = (600,100))
    
rigMakeUI()