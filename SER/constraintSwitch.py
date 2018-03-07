# encoding: utf-8
'''
########################################################################################################################
  SER constraint
  SER コンすトレインツール
  
  担当者：チュー
  2018/02/28
  
HumanIK あれ状態に武器持っている手を交換するのためのツール

実行する前に、Joint_Weaponの位置はHelper_Weapon1と一緒を確認してください。
それはなければ、合わせてください。

########################################################################################################################
'''
import pymel.core as pm
import maya.OpenMayaAnim as animAPI
import maya.mel as mel

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
    pm.window(windowID, title = u'SER 武器コンストレイン | 2018/02/28', widthHeight = (600,100))
    
    #buttons for first row
    constrFrame = pm.frameLayout(annotation = 'annotation test', label = u'武器コンストレイン', labelIndent = 5, width = 590, marginHeight = 5)
    pm.rowLayout( 'row1', nc = 5, width = 400)
    
    conSetup = pm.button( 'constraintSetup', label = u'コンストレイン　インストール', width = 300, height = 30, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row1', command = 'SERTools_001.constraintSwitch.createConstr()' )
    bake = pm.button( 'motionBake', label = u'ベーク', width = 300, height = 30, backgroundColor = ( 0.6, 0.6, 0.6), parent = 'row1', command = 'SERTools_001.constraintSwitch.bakeLoc()' )
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