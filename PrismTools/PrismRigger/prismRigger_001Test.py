# encoding: utf-8
'''
###########################################################################################################
プリズムプラス  リグイングツール  PrismPlus Rigger Tool

担当者：チュー

Simple rigging tool for company to use on future projects because HumanIK is a ridiculous choice for 
non-motion capture projects.
This will buy time for me to see if I can implement mGear for Prism+


There will be multiple components to this tool.
1 will be to create a tool that will create locators for the rigger to move to the appropriate place.
2nd will be a tool to spawn joints and connect all of the joints into a proper hierarchy and apply IKs and
whatever to them./

A 3rd tool to copy weights and and preserve them while the rigger adjusts the pivots or joint positions.

Ideally, a 4th tool to oneMesh all the mesh to make it lighter for export as well as easier for the copy 
weights tool to copy and preserve the weights.

For now, just write the 1st and 2nd tool.

Attached is also a second class for the prismPicker

###########################################################################################################
'''

import pymel.core as pm
import maya.mel as mel
#import os
#import sys
#sys.path.append('//p.sv/Prism/project/SER/user/chew/SERTools')#adding new directory for tools to import


class PrismRigger():
    def __init__(self):
        self.jointController = {}  # value will be a list with required data in sequence in the list
        contrList = open('D:/ChewTools/PrismTools/PrismRigger/jointControllerList.txt') #reading the list of bones and controllers and dumping it into memory
        for i in contrList:
            if len(i.split(' ')) > 1:
                self.jointController[i.split(' ')[0]] = i.split(' ')[1:]
                self.jointController[i.split(' ')[0]][-1] = self.jointController[i.split(' ')[0]][-1].rstrip('\r\n')

    def uiWindow(self):
        # checking for duplicate windows
        windowID = 'PrismRigger'
        if pm.window(windowID, exists=True):
            pm.deleteUI(windowID)
            pm.windowPref(windowID, remove=True)

        # creating window
        pm.window(windowID, title=u'Prism リガー', widthHeight=(600, 800))

        # menu bar
        menuBar = pm.menuBarLayout()
        helpMenu = pm.menu(label=u'Help')
        manualMenu = pm.menuItem(label=u'仕様書', parent=helpMenu, subMenu=True)#help


    def importSkeleton(self):
        pm.importFile('D:\ChewTools\PrismTools\PrismRigger\Joint.ma')
        pass
    def supBoneCreate(self):
        pass

    def fkContr(self, contrName):#sub function for the create controls function
        contr = pm.circle(nr=(1,0,0), r=float(self.jointController[contrName][1]))[0]
        pm.rename(contr, self.jointController[contrName][2])  # renaming control
        pm.xform(contr, t=pm.xform(contrName, ws=True, q=True, t=True),
                 ro=pm.xform(contrName, ws=True, q=True, ro=True),
                 scale=(5, 5, 5))  # translate controller to appropriate position, scaling to 5
        pm.makeIdentity(contr, apply=True, translate=True, scale=True, rotate=True)

        #pm.parent(self.jointController[contrName][2], self.jointController[str(pm.listRelatives(contrName, p=True)[0])][2])



    def createControls(self):
        for i in self.jointController:
            #create appropriate controller shape at appropriate location, based on data from the list
            if self.jointController[i][0] == 'fk':
                self.fkContr(i)

            if self.jointController[i][0] == 'fkik':
                #creating IK controller
                contr = mel.eval('curve -d 1 -p 0.5 0.5 0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 -0.5 -0.5 -p 0.5 -0.5 -0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 0.5 0.5 -p 0.5 0.5 0.5 -p 0.5 -0.5 0.5 -p 0.5 -0.5 -0.5 -p -0.5 -0.5 -0.5 -p -0.5 -0.5 0.5 -p 0.5 -0.5 0.5 -p -0.5 -0.5 0.5 -p -0.5 0.5 0.5 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -n "controller1" ;')
                contr = pm.rename(contr, self.jointController[i][3])#renaming control
                if 'Hand' in self.jointController[i][3]:
                    pm.xform(contr, t=pm.xform(i, ws=True, q=True, t=True),
                             ro=pm.xform(i, ws=True, q=True, ro=True),
                             ws=True,
                             scale=(5,5,5)) #translate controller to appropriate position, scaling to 5
                    pm.makeIdentity(contr, apply=True, translate=True, scale=True)
                elif 'Foot' in self.jointController[i][3]:
                    pm.xform(contr, t=pm.xform(i, ws=True, q=True, t=True),
                             ws=True,
                             scale=(10,10,10)) #translate controller to appropriate position, scaling to 5
                    #pm.setAttr(contr.ty, 0.5)
                    pm.makeIdentity(contr, apply=True, translate=True, scale=True)
                self.fkContr(i)

            if self.jointController[i][0] == 'fkpv':
                self.fkContr(i)
                contr = pm.spaceLocator()
                pm.rename(contr, self.jointController[i][3])  #renaming control
                pm.xform(contr, t=pm.xform(i, ws=True, q=True, t=True),
                         ro=pm.xform(i, ws=True, q=True, ro=True),
                         ws=True,
                         scale=(5,5,5))#translate controller to appropriate position, scaling to 5


    def createRig(self):
        #constrain joints to controllers
        for i in self.jointController:
            #print i
            pm.parentConstraint(self.jointController[i][2], 'BoneFK' + i.lstrip('Character'), mo=True, )


        #create IK chains
        ikLegL = pm.ikHandle(sj='BoneIK_LeftUpLeg', ee='BoneIK_LeftFoot', solver='ikRPsolver', name='ikHandle_Leg_Left')[0]
        ikArmL = pm.ikHandle(sj='BoneIK_LeftArm', ee='BoneIK_LeftHand', solver='ikRPsolver', name='ikHandle_Arm_Left')[0]
        ikLegR = pm.ikHandle(sj='BoneIK_RightUpLeg', ee='BoneIK_RightFoot', solver='ikRPsolver', name='ikHandle_Leg_Right')[0]
        ikArmR = pm.ikHandle(sj='BoneIK_RightArm', ee='BoneIK_RightHand', solver='ikRPsolver', name='ikHandle_Arm_Right')[0]
        pm.parentConstraint('ik_Foot_Left',ikLegL)
        pm.parentConstraint('ik_Hand_Left', ikArmL)
        pm.parentConstraint('ik_Foot_Right', ikLegR)
        pm.parentConstraint('ik_Hand_Right', ikArmR)

        #offset the pole vectors via a vector method later!
        pm.poleVectorConstraint('pv_Knee_Left', ikLegL)
        pm.poleVectorConstraint('pv_Elbow_Left', ikArmL)
        pm.poleVectorConstraint('pv_Knee_Right', ikLegR)
        pm.poleVectorConstraint('pv_Elbow_Right', ikArmR)

        #parenting FK controllers into correct hierarchy
        for i in self.jointController:
            print i
            try:
                pm.parent(self.jointController[i][2], self.jointController[str(pm.listRelatives(i, p=True)[0])][2])
            except:
                print('exception for hips')
                pass

        #constraining all the requisite stuff
        #constraining the character bones to both the IK and FK bones
        for i in pm.listRelatives('Character_Hips', type='joint', ad=True):
            if i not in self.jointController:
                continue
            elif len(self.jointController[i]) >= 4:
                parConstr = pm.parentConstraint(i.replace('Character_', 'BoneFK_'), i.replace('Character_', 'BoneIK_'),
                                                i, mo=False, w=1)
                pm.setAttr(parConstr.getWeightAliasList()[-1], 0)
            else:
                #print i
                parConstr = pm.parentConstraint(i.replace('Character_', 'BoneFK_'), i, mo=False, w=1)
                #pm.setAttr(parConstr.getWeightAliasList()[-1], 0)
        parConstr = pm.parentConstraint('BoneFK_Hips', 'Character_Hips', mo=False, w=1)
        pm.setAttr(parConstr.getWeightAliasList()[-1], 0)

    def exportWeights(self): #besides exporting the weights, copy them into memory so that the rigger can make slight bone shifting
        pass
    def importWeights(self): #copy from memory if the data exists, so slight bone shifts can be made
        pass

class PrismPicker():
    def __init__(self):
        #detect the presence of a PrismRigger rig and identify
        pass

    def pickerUI(self):
        pass
    def selectFunc(self):
        pass
    def fkSwitch(self):
        pass
    def ikSwitch(self):
        #try to use vectors to position the pole vector
        pass
    def importHumanIK(self):
        pass

