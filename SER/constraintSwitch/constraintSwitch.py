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

pm.xform('Helper_Weapon1', q = True, translation = True, ws = True)
pm.xform('Helper_Weapon1', q = True, rotation = True, ws = True)
pm.xform('locator1', translation = pm.xform('Joint_Weapon', q = True, translation = True, ws = True), rotation = pm.xform('Joint_Weapon', q = True, rotation = True), ws = True)

#create two functions, 1 to create the locator and constraint it
def createConstr():
    loc = pm.spaceLocator(name = 'HelperLocator')
    pm.xform(loc, ws = True, translation = pm.xform('Helper_Weapon1', q = True, translation = True, ws = True), rotation = pm.xform('Helper_Weapon1', q = True, rotation = True, ws = True)) #moving locator to right place
    try:
        pm.delete(pm.listRelatives('Joint_Weapon', type = 'constraint')[0]) #delete any existing constraint
    except:
        print('nothing to delete')
    jointToLoc = pm.parentConstraint(loc, 'Joint_Weapon', name = 'constraint_Joint_To_Locator')
    #parent constraint the locator to both helpers
    parentCon = pm.parentConstraint('Helper_Weapon1', loc, mo = True)
    pm.parentConstraint('Helper_Weapon2', loc, mo = True)
    pm.setAttribute(parentCon.
    
#create another function to bake it, remove the constraints, switch off humanIK, constraint helper to the locator, bake it, and then delete constraints and switch on humanIK again


