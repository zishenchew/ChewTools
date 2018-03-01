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

def createContr():
    #check if character has been IK'ed
    if pm.objExists('ik_Hand_R'):
        return pm.confirmDialog(title = 'SER Constraint', message = u'キャラクターリグ既にコンバートしました')
        
    #setting T-pose in frame -10
    pm.currentTime(-10, edit = True, update = True)
    AnimPose_001.poseTest()
    #creating hand controls
    ikRH = mel.eval('curve -d 1 -p 0.5 0.5 0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 -0.5 -0.5 -p 0.5 -0.5 -0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 0.5 0.5 -p 0.5 0.5 0.5 -p 0.5 -0.5 0.5 -p 0.5 -0.5 -0.5 -p -0.5 -0.5 -0.5 -p -0.5 -0.5 0.5 -p 0.5 -0.5 0.5 -p -0.5 -0.5 0.5 -p -0.5 0.5 0.5 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -n "ik_Hand_R" ;')
    ikLH = mel.eval('curve -d 1 -p 0.5 0.5 0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 -0.5 -0.5 -p 0.5 -0.5 -0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 0.5 0.5 -p 0.5 0.5 0.5 -p 0.5 -0.5 0.5 -p 0.5 -0.5 -0.5 -p -0.5 -0.5 -0.5 -p -0.5 -0.5 0.5 -p 0.5 -0.5 0.5 -p -0.5 -0.5 0.5 -p -0.5 0.5 0.5 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -n "ik_Hand_L" ;')
    pm.xform(ikRH, translation = pm.xform('Character1_Ctrl_RightWristEffector', q = True, ws = True, translation = True), rotation = pm.xform('Character1_Ctrl_RightWristEffector', q = True, ws = True, rotation = True), scale = [10, 10, 10], ws = True)
    pm.xform(ikLH, translation = pm.xform('Character1_Ctrl_LeftWristEffector', q = True, ws = True, translation = True), rotation = pm.xform('Character1_Ctrl_LeftWristEffector', q = True, ws = True, rotation = True), scale = [10, 10, 10], ws = True)
    pm.parentConstraint('Character1_Ctrl_RightWristEffector', ikRH) #constraint to bake the transform data
    pm.parentConstraint('Character1_Ctrl_LeftWristEffector', ikLH) #constraint to bake the transform data
    
    #creating feet controls
    ikRFoot = mel.eval('curve -d 1 -p 0.5 0.5 0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 -0.5 -0.5 -p 0.5 -0.5 -0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 0.5 0.5 -p 0.5 0.5 0.5 -p 0.5 -0.5 0.5 -p 0.5 -0.5 -0.5 -p -0.5 -0.5 -0.5 -p -0.5 -0.5 0.5 -p 0.5 -0.5 0.5 -p -0.5 -0.5 0.5 -p -0.5 0.5 0.5 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -n "ik_Foot_R" ;')
    ikLFoot = mel.eval('curve -d 1 -p 0.5 0.5 0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 -0.5 -0.5 -p 0.5 -0.5 -0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 0.5 0.5 -p 0.5 0.5 0.5 -p 0.5 -0.5 0.5 -p 0.5 -0.5 -0.5 -p -0.5 -0.5 -0.5 -p -0.5 -0.5 0.5 -p 0.5 -0.5 0.5 -p -0.5 -0.5 0.5 -p -0.5 0.5 0.5 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -n "ik_Foot_L" ;')
    pm.xform(ikRFoot, translation = pm.xform('Character1_Ctrl_RightAnkleEffector', q = True, ws = True, translation = True), rotation = pm.xform('Character1_Ctrl_RightAnkleEffector', q = True, ws = True, rotation = True), scale = [10, 10, 10], ws = True)
    pm.xform(ikLFoot, translation = pm.xform('Character1_Ctrl_LeftAnkleEffector', q = True, ws = True, translation = True), rotation = pm.xform('Character1_Ctrl_LeftAnkleEffector', q = True, ws = True, rotation = True), scale = [10, 10, 10], ws = True)
    pm.parentConstraint('Character1_Ctrl_RightAnkleEffector', ikRFoot) #constraint to bake the transform data
    pm.parentConstraint('Character1_Ctrl_LeftAnkleEffector', ikLFoot) #constraint to bake the transform data
    
    #creating COG control
    COG = mel.eval('curve -d 1 -p 1 0 -1 -p -1 0 -1 -p -1 0 1 -p 1 0 1 -p 1 0 -1 -k 0 -k 1 -k 2 -k 3 -k 4 -n "COG" ;')
    pm.xform(COG, translation = pm.xform('Character1_Ctrl_HipsEffector', q = True, ws = True, translation = True), rotation = pm.xform('Character1_Ctrl_RightAnkleEffector', q = True, ws = True, rotation = True), scale = [20, 20, 20], ws = True)
    pm.parentConstraint('Character1_Ctrl_HipsEffector', COG) #constraint to bake the transform data
    
    ##############################################################################################################################################################################
    contrList = [ikRH, ikLH, ikRFoot, ikLFoot, COG]
    contrDict = {
        ikRH : 'Character1_Ctrl_RightWristEffector',
        ikLH : 'Character1_Ctrl_LeftWristEffector',
        ikRFoot : 'Character1_Ctrl_RightAnkleEffector',
        ikLFoot : 'Character1_Ctrl_LeftAnkleEffector',
        COG : 'Character1_Ctrl_HipsEffector'
    }
    
    #freeze transformation here
    pm.makeIdentity(contrList, apply = True)
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
        print i
        pm.setKeyframe(i)
        pm.setAttr('%s.blendParent1' %i, 1)
    for i in contrDict:
        for j in pm.keyframe(contrDict[i], q = True, at = 'tx'):
            pm.currentTime(j, edit = True, update = True)
            pm.setKeyframe(i)
            
            

    '''#this part is redundant now
    if pm.keyframe('Character1_Ctrl_RightWristEffector', 'Character1_Ctrl_LeftWristEffector', 'Character1_Ctrl_RightAnkleEffector', 'Character1_Ctrl_LeftAnkleEffector', 'Character1_Ctrl_HipsEffector', q = True):
        print('keyframe exists, baking')
        pm.bakeResults(ikRH, ikLH, ikRFoot, ikLFoot, COG, smart = True, simulation = False, time = (animAPI.MAnimControl.minTime().value(), animAPI.MAnimControl.maxTime().value()))#baking the controllers to transfer the animation data
    '''
    pm.mel.mayaHIKsetCharacterInput( "Character1","" ) #turn off humanIK
    pm.mel.hikUpdateContextualUI()
    pm.mel.hikUpdateSourceList()
    pm.mel.hikUpdateCurrentSourceFromUI()
    pm.mel.hikUpdateContextualUI()
    pm.mel.hikUpdateSourceList()
    

    #reverse the constraints on controllers
    contrList = [ikRH, ikLH, ikRFoot, ikLFoot, COG]
    for i in contrList:
        pm.delete(pm.listRelatives(i, type = 'constraint'))
    
    #set up IKs
    ikHandleRH = pm.ikHandle(name = 'ikHandleRightHand', sj = 'Character_RightArm', ee = 'Character_RightHand', solver = 'ikRPsolver')
    ikHandleLH = pm.ikHandle(name = 'ikHandleLeftHand', sj = 'Character_LeftArm', ee = 'Character_LeftHand', solver = 'ikRPsolver')
    ikHandleRF = pm.ikHandle(name = 'ikHandleRightFoot', sj = 'Character_RightUpLeg', ee = 'Character_RightFoot', solver = 'ikRPsolver')
    ikHandleLF = pm.ikHandle(name = 'ikHandleLeftFoot', sj = 'Character_LeftUpLeg', ee = 'Character_LeftFoot', solver = 'ikRPsolver')
    #create poleVectors 
    #pm.spaceLocator
    
    pm.parentConstraint(ikRH, 'Character_RightHand')#
    pm.parentConstraint(ikLH, 'Character_LeftHand')#
    pm.parentConstraint(ikRFoot, 'Character_RightFoot')#
    pm.parentConstraint(ikLFoot, 'Character_LeftFoot')#
    pm.parentConstraint(COG, 'Character_Hips')
    
    


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
    
    conSetup = pm.button( 'constraintSetup', label = u'リグを作る', width = 300, height = 30, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row1', command = 'createContr()' )
    #bake = pm.button( 'motionBake', label = u'ベーク', width = 300, height = 30, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row1', command = 'bakeLoc()' )
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