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
    rigConv.AnimPose_001.poseTest()
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
    pm.xform(COG, translation = pm.xform('Character1_Ctrl_HipsEffector', q = True, ws = True, translation = True), rotation = pm.xform('Character1_Ctrl_RightAnkleEffector', q = True, ws = True, rotation = True), scale = [15, 15, 15], ws = True)
    pm.parentConstraint('Character1_Ctrl_HipsEffector', COG) #constraint to bake the transform data
    
    #check if there is animation data
    if pm.keyframe('Character1_Ctrl_RightWristEffector', 'Character1_Ctrl_LeftWristEffector', 'Character1_Ctrl_RightAnkleEffector', 'Character1_Ctrl_LeftAnkleEffector', 'Character1_Ctrl_HipsEffector', q = True):
        print('keyframe exists, baking')
        pm.bakeResults(ikRH, ikLH, ikRFoot, ikLFoot, COG, smart = True, simulation = False)#baking the controllers to transfer the animation data
    
    pm.mel.mayaHIKsetCharacterInput( "Character1","" ) #turn off humanIK
    pm.mel.hikUpdateContextualUI()
    pm.mel.hikUpdateSourceList()
    pm.mel.hikUpdateCurrentSourceFromUI()
    pm.mel.hikUpdateContextualUI()
    pm.mel.hikUpdateSourceList()
    
    #reverse the constraints on controllers
    contrList = [
    
    
#create two functions, 1 to create the locator and constraint it
def createConstr():
    if pm.objExists('HelperLocator'):#check if script is already run
        return pm.confirmDialog(title = 'SER Constraint', message = u'コンすトレイン既にやりました')

    loc = pm.spaceLocator(name = 'HelperLocator')
    pm.xform(loc, ws = True, translation = pm.xform('Helper_Weapon1', q = True, translation = True, ws = True), rotation = pm.xform('Helper_Weapon1', q = True, rotation = True, ws = True), scale = [5,5,5]) #moving locator to right place
    
    if pm.listRelatives('Joint_Weapon', type = 'constraint'):
        pm.delete(pm.listRelatives('Joint_Weapon', type = 'constraint')[0]) #delete any existing constraint

    jointToLoc = pm.parentConstraint(loc, 'Joint_Weapon', name = 'constraint_Joint_To_Locator')
    #parent constraint the locator to both helpers
    parentCon = pm.parentConstraint('Helper_Weapon1', loc, mo = True)
    pm.parentConstraint('Helper_Weapon2', loc, mo = True)
    
    pm.setAttr(pm.listRelatives('HelperLocator', type = 'constraint')[0] + '.' + pm.listAttr(pm.listRelatives('HelperLocator', type = 'constraint')[0])[-2], 1) #please check and adjust final variable names
    pm.setAttr(pm.listRelatives('HelperLocator', type = 'constraint')[0] + '.' + pm.listAttr(pm.listRelatives('HelperLocator', type = 'constraint')[0])[-1], 0)
    #pm.setAttr(pm.listRelatives('HelperLocator', type = 'constraint')[0].Helper_Weapon2W1, 0) #please check and adjust final variable names
    
#create another function to bake it, remove the constraints, switch off humanIK, constraint helper to the locator, bake it, and then delete constraints and switch on humanIK again
def bakeLoc():
    if pm.objExists('HelperLocator'):
        loc = pm.ls('HelperLocator')[0]
    #handling the locator
    pm.bakeResults(loc, simulation = True, time = (animAPI.MAnimControl.minTime().value(), animAPI.MAnimControl.maxTime().value()) ) #baking the locator
    pm.delete(pm.listRelatives(loc, type = 'constraint')[0])#removing the constraint of the locator
    
    pm.mel.eval('HIKCharacterControlsTool') #command to open humanIK
    pm.mel.hikSetCurrentCharacter("Character1") #selecting character
    pm.mel.hikUpdateContextualUI()
    pm.mel.hikBakeCharacter(0) #this is the bake to skeleton command
    
    pm.parentConstraint(loc, 'Helper_Weapon1')
    pm.bakeResults('Helper_Weapon1', simulation = True, time = (animAPI.MAnimControl.minTime().value(), animAPI.MAnimControl.maxTime().value()) ) #baking the locator
    pm.delete(pm.listRelatives('Helper_Weapon1', type = 'constraint')[0])
    
    pm.mel.mayaHIKsetRigInput("Character1")#setting back to humanIK
    pm.mel.hikUpdateContextualUI()#updating the humanIK UI
    pm.mel.hikUpdateSourceList()
    
    #changing constraints and deleting old stuff
    pm.delete('constraint_Joint_To_Locator')
    pm.parentConstraint('Helper_Weapon1', 'Joint_Weapon')

def scriptUI():
    windowID = 'WeapCon'
    if pm.window(windowID, exists = True):
        pm.deleteUI(windowID)
        pm.windowPref( 'WeapCon', remove=True )
    
    #creating window
    pm.window(windowID, title = 'SER Weapon Constraint | 2018/02/28', widthHeight = (600,100))
    
    #buttons for first row
    constrFrame = pm.frameLayout(annotation = 'annotation test', label = '武器コンストレイン', labelIndent = 5, width = 590, marginHeight = 5)
    pm.rowLayout( 'row1', nc = 5, width = 400)
    
    conSetup = pm.button( 'constraintSetup', label = u'コンストレイン　インストール', width = 300, height = 30, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row1', command = 'createConstr()' )
    bake = pm.button( 'motionBake', label = u'ベーク', width = 300, height = 30, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row1', command = 'bakeLoc()' )
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

