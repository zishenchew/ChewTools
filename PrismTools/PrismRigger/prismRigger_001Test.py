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
from functools import partial

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
        self.uiWindow()

    def uiWindow(self):
        # checking for duplicate windows
        windowID = 'PrismRigger'
        if pm.window(windowID, exists=True):
            pm.deleteUI(windowID)
            pm.windowPref(windowID, remove=True)

        # creating window
        pm.window(windowID, title=u'ORENDA リガー', widthHeight=(300, 100))

        # menu bar
        menuBar = pm.menuBarLayout()
        helpMenu = pm.menu(label=u'Help')
        manualMenu = pm.menuItem(label=u'仕様書', parent=helpMenu, subMenu=True)#help

        # button layout
        self.masterColumn = pm.columnLayout('masterColumn', width=400)
        self.riggerButtons = pm.rowLayout(parent=self.masterColumn, nc=10)
        # buttons
        pm.text(' ', width=25)
        pm.button('importSkel', label=u'Import joints', command=self.importSkeleton, parent=self.riggerButtons)
        pm.button('createControls', label=u'Create controllers', command=self.createControls, parent=self.riggerButtons)
        pm.button('createRig', label=u'Create rig', command=self.createRig, parent=self.riggerButtons)

        pm.showWindow()


    def importSkeleton(self, *mayafalse):
        try:
            pm.importFile(r'D:\ChewTools\PrismTools\PrismRigger\Joint.ma') # if working from office
        except:
            pm.importFile(r'D:\3 - Code repositories\ChewTools\PrismTools\PrismRigger\Joint.ma') # if working from home
        pass
    def supBoneCreate(self):
        pass

    def fkContr(self, contrName):#sub function for the create controls function
        contr = pm.circle(nr=(1,0,0), r=float(self.jointController[contrName][1]), name=self.jointController[contrName][2])[0]
        grp = pm.group(contr, name=str(self.jointController[contrName][2] + '_grp'))
        #pm.rename(contr, self.jointController[contrName][2])  # renaming control
        pm.xform(grp, t=pm.xform(contrName, ws=True, q=True, t=True),
                 ro=pm.xform(contrName, ws=True, q=True, ro=True),
                 scale=(5, 5, 5))  # translate controller to appropriate position, scaling to 5

        #creating an extra set of controls for fresh gimbals
        #controllers are only created for arms and legs
        if 'Arm' in str(contrName) or 'Hand' in str(contrName) or 'Leg' in str(contrName) or 'Foot' in str(contrName):
            dupe = pm.duplicate(contr, name = str(contr) + '_gimbal')
            pm.parent(dupe, contr)
            pm.xform(dupe, scale=(0.8,0.8,0.8)) #shrinking it so it can be seen
            pm.makeIdentity(dupe, apply=True, translate=True, rotate=True, scale=True)

        #pm.setAttr(grp.translate, lock=True) #locking attributes
        #pm.setAttr(grp.rotate, lock=True)
        #pm.setAttr(grp.scale, lock=True)
        #pm.parent(self.jointController[contrName][2], self.jointController[str(pm.listRelatives(contrName, p=True)[0])][2])



    def createControls(self, *mayafalse):
        for i in self.jointController:
            #create appropriate controller shape at appropriate location, based on data from the list
            if self.jointController[i][0] == 'fk':
                self.fkContr(i)

            if self.jointController[i][0] == 'fkik':
                #creating IK controller
                contr = mel.eval('curve -d 1 -p 0.5 0.5 0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 -0.5 -0.5 -p 0.5 -0.5 -0.5 -p 0.5 0.5 -0.5 -p -0.5 0.5 -0.5 -p -0.5 0.5 0.5 -p 0.5 0.5 0.5 -p 0.5 -0.5 0.5 -p 0.5 -0.5 -0.5 -p -0.5 -0.5 -0.5 -p -0.5 -0.5 0.5 -p 0.5 -0.5 0.5 -p -0.5 -0.5 0.5 -p -0.5 0.5 0.5 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -n "controller1" ;')
                contr = pm.rename(contr, self.jointController[i][3])#renaming control

                grp = pm.group(contr, name=str(self.jointController[i][3] + '_grp'))

                if 'Hand' in self.jointController[i][3]:
                    pm.xform(grp, t=pm.xform(i, ws=True, q=True, t=True),
                             ro=pm.xform(i, ws=True, q=True, ro=True),
                             ws=True,
                             scale=(5,5,5)) #translate controller to appropriate position, scaling to 5
                    #pm.makeIdentity(contr, apply=True, translate=True, scale=True)
                    pm.parent(contr, world=True, absolute=True)
                    pm.delete(grp)
                    pm.addAttr(contr, dt='string', longName='default')#setting default hand transform values
                    pm.setAttr(contr.default,
                               str(pm.xform(contr, ws=True, q=True, t=True)).strip('[').strip(']').replace(
                                   ', ', ' '))
                    pm.makeIdentity(contr, apply=True, translate=True, rotate=True, scale=True)

                elif 'Foot' in self.jointController[i][3]:
                    pm.xform(grp, t=pm.xform(i, ws=True, q=True, t=True),
                             ws=True,
                             scale=(10,10,10)) #translate controller to appropriate position, scaling to 5
                    #pm.setAttr(contr.ty, 0.5)
                    #pm.makeIdentity(contr, apply=True, translate=True, scale=True)
                    pm.parent(contr, world=True, absolute=True)
                    pm.delete(grp)
                    pm.makeIdentity(contr, apply=True, translate=True, rotate=True, scale=True)
                self.fkContr(i)

            if self.jointController[i][0] == 'fkpv':
                self.fkContr(i)
                contr = pm.spaceLocator()
                pm.rename(contr, self.jointController[i][3])  #renaming control
                pm.xform(contr, t=pm.xform(i, ws=True, q=True, t=True),
                         ro=pm.xform(i, ws=True, q=True, ro=True),
                         ws=True,
                         scale=(5,5,5))#translate controller to appropriate position, scaling to 5


    def createRig(self, mayafalse):
        #constrain joints to controllers
        for i in self.jointController:
            pm.parentConstraint(self.jointController[i][2], 'BoneFK' + i.lstrip('Character'), mo=True)

        #create IK chains
        ikLegL = pm.ikHandle(sj='BoneIK_LeftUpLeg', ee='BoneIK_LeftFoot', solver='ikRPsolver', name='ikHandle_Leg_Left')[0]
        ikFootL = pm.ikHandle(sj='BoneIK_LeftFoot', ee='BoneIK_LeftToeBase', solver='ikSCsolver', name='ikHandle_Foot_Left')[0]
        ikArmL = pm.ikHandle(sj='BoneIK_LeftArm', ee='BoneIK_LeftHand', solver='ikRPsolver', name='ikHandle_Arm_Left')[0]
        ikLegR = pm.ikHandle(sj='BoneIK_RightUpLeg', ee='BoneIK_RightFoot', solver='ikRPsolver', name='ikHandle_Leg_Right')[0]
        ikFootR = pm.ikHandle(sj='BoneIK_RightFoot', ee='BoneIK_RightToeBase', solver='ikSCsolver', name='ikHandle_Foot_Right')[0]
        ikArmR = pm.ikHandle(sj='BoneIK_RightArm', ee='BoneIK_RightHand', solver='ikRPsolver', name='ikHandle_Arm_Right')[0]
        '''
        #this is gonna be redundant soon. Delete later
        pm.parentConstraint('ik_Foot_Left',ikLegL)
        pm.parentConstraint('ik_Foot_Left', ikFootL, mo=True)
        pm.parentConstraint('ik_Hand_Left', ikArmL)
        pm.parentConstraint('ik_Foot_Right', ikLegR)
        pm.parentConstraint('ik_Foot_Right', ikFootR, mo=True)
        pm.parentConstraint('ik_Hand_Right', ikArmR)
        '''
        #offset the pole vectors via a vector method later!
        pm.poleVectorConstraint('pv_Knee_Left', ikLegL)
        pm.poleVectorConstraint('pv_Elbow_Left', ikArmL)
        pm.poleVectorConstraint('pv_Knee_Right', ikLegR)
        pm.poleVectorConstraint('pv_Elbow_Right', ikArmR)

        #parenting FK controllers into correct hierarchy
        for i in self.jointController:
            #inserting extra logic to account for the extra gimbal controllers created
            try:
                if pm.ls(self.jointController[str(pm.listRelatives(i, p=True)[0])][2] + '_gimbal'):
                    #print('gimbals')
                    #print(self.jointController[i][2] + ' -> ' + self.jointController[str(pm.listRelatives(i, p=True)[0])][2] + '_gimbal')
                    pm.parent(self.jointController[i][2] + '_grp', self.jointController[str(pm.listRelatives(i, p=True)[0])][2] + '_gimbal')

                else:
                    try:
                        pm.parent(str(self.jointController[i][2] + '_grp'),
                                  self.jointController[str(pm.listRelatives(i, p=True)[0])][2])
                    except:
                        pass
            except:
                print('exception for hips')
                pass




        #constraining all the requisite stuff
        #constraining the character bones to both the IK and FK bones
        print self.jointController
        for i in pm.listRelatives('Character_Hips', type='joint', ad=True):
            if str(i) not in self.jointController:
                print i
                continue

            elif len(self.jointController[str(i)]) >= 4:
                parConstr = pm.parentConstraint(i.replace('Character_', 'BoneFK_'), i.replace('Character_', 'BoneIK_'),
                                                i, mo=False, w=1)
                pm.setAttr(parConstr.getWeightAliasList()[-1], 0)
            else:
                pm.parentConstraint(i.replace('Character_', 'BoneFK_'), i, mo=False, w=1)

        #grouping the IK controllers all under an IK controller group
        ikGrp = pm.group(name='ikContr_grp', empty=True)
        pm.parent('pv_Knee_Left',
                  'pv_Knee_Right',
                  'pv_Elbow_Left',
                  'pv_Elbow_Right',
                  'ik_Foot_Left',
                  'ik_Foot_Right',
                  'ik_Hand_Left',
                  'ik_Hand_Right',
                  ikGrp)

        #now doing last constraints for the stuff I left out accidentally. Will fix at a later date.
        pm.parentConstraint('BoneFK_Hips', 'Character_Hips', mo=False, w=1)
        pm.parentConstraint('BoneIK_LeftArm', 'Character_LeftArm', mo=False, w=0)
        pm.parentConstraint('BoneIK_RightArm', 'Character_RightArm', mo=False, w=0)
        pm.parentConstraint('BoneIK_LeftUpLeg', 'Character_LeftUpLeg', mo=False, w=0)
        pm.parentConstraint('BoneIK_RightUpLeg', 'Character_RightUpLeg', mo=False, w=0)

        #grouping the IK handles of the arms and legs in preparation for the softIK
        for i in pm.ls('ikHandle*', type='ikHandle'):
            grp = pm.group(name=i + '_grp', empty=True)
            pm.xform(grp, t=pm.xform(i, ws=True, q=True, t=True), ws=True) #centering pivot
            pm.makeIdentity(grp, apply=True, translate=True, scale=True)
            if i[9:12] == 'Leg' or i[9:12] == 'Foo':
                if i[-4:] == 'ight':
                    pm.parent(i, 'ik_Foot_' + i[-5:])
                else:
                    pm.parent(i, 'ik_Foot_' + i[-4:])
            else:
                if i[-4:] == 'ight':
                    pm.parent(i, 'ik_Hand_' + i[-5:])
                else:
                    pm.parent(i, 'ik_Hand_' + i[-4:])

        for i in pm.listRelatives(ikGrp):
            if i[:2] == 'ik':
                grp = pm.group(name=i + '_grp', empty=True)
                pm.xform(grp, t=pm.xform(i, ws=True, q=True, t=True),
                         ws=True)  # translate controller to appropriate position, scaling to 5
                pm.makeIdentity(grp, apply=True, translate=True, scale=True)
                pm.parent()

        pm.delete('ikHandle_Arm_Left_grp') #deleting empty groups
        pm.delete('ikHandle_Arm_Right_grp')
        pm.delete('ikHandle_Foot_Left_grp')
        pm.delete('ikHandle_Foot_Right_grp')
        pm.delete('ikHandle_Leg_Left_grp')
        pm.delete('ikHandle_Leg_Right_grp')
        pm.delete('ik_Foot_Left_grp')
        pm.delete('ik_Foot_Right_grp')
        pm.delete('ik_Hand_Left_grp')
        pm.delete('ik_Hand_Right_grp')

        '''
        get this to work another time
        for i in pm.ls('ik*', type='transform', assemblies=True): #deleting empty groups
            if pm.listRelatives(i, parent=True) == []:
                children = pm.listRelatives(i)
                if not pm.listRelatives(i):
                    try:
                        pm.delete(i)
                    except:
                        print('deleting empty top level transform nodes')
                        pass
        '''
        '''
        This part is the prepping of the nodes for the softIK
        
        pm.shadingNode('addDoubleLinear', asUtility=True, name='node_ArmLength') #left arm length
        pm.connectAttr('BoneFK_LeftForeArm.tx', 'node_ArmLength.input1')
        pm.connectAttr('BoneFK_LeftHand.tx', 'node_ArmLength.input2')

        pm.shadingNode('addDoubleLinear', asUtility=True, name='node_LegLength') #left leg length
        pm.connectAttr('BoneFK_LeftLeg.tx', 'node_LegLength.input1')
        pm.connectAttr('BoneFK_LeftFoot.tx', 'node_LegLength.input2')

        pm.shadingNode('multiplyDivide', asUtility=True, name='node_ratio')
        pm.setAttr('node_ratio.operation', 2)
        pm.connectAttr('node_LegLength.output', 'node_ratio.input1x')
        pm.connectAttr('node_ArmLength.output', 'node_ratio.input2x')
        '''

    def exportWeights(self): #besides exporting the weights, copy them into memory so that the rigger can make slight bone shifting
        pass
    def importWeights(self): #copy from memory if the data exists, so slight bone shifts can be made
        pass




    def softIK(self, *mayafalse):
        pass
        '''
        1. use the translate X output of the bones and connect it to a sum node to get the full length of the legs.
        2. for some reason, the sum of the arms and legs are sent into a divide node (output is leg length divided by arm length), then the resulting output is sent into the another multiply node 
        to be multiplied with the softness value. 
        FIGURED IT OUT
        the reason the leg length was divided by the arm length is simply to obtain an arbitrary non zero and >1 number that would serve as a multiplier for the softness.
        the reason is that if we inserted an arbitrary length/number, it would change from character to character, so having arm and leg length serve as the two arbitrary numbers ensures that
        no character to character tweaking is needed.
        
        3. then just add a bigger than 0 conditional to switch on and off the scaling and apply the following formula
        x = softness * (1-exp(-1*(length - ratio)/softness) ) + (ratio)
        
        
        //腕
        float $sof_ude_l = condition_ude_softness_l.outColorR;
        float $dis_ude_l = distanceBetween_ude_l.distance;
        float $disSub_ude_l = plusMinusAverage_ude_factDist_Sub_l.output3Dx;
        multiplyDivide_ude_smartRatio_l.input1X = $sof_ude_l*( 1-exp(-1*($dis_ude_l-$disSub_ude_l)/$sof_ude_l) )+ $disSub_ude_l;
    
        //脚
        float $sof_ashi_l = condition_ashi_softness_l.outColorR; softness
        float $dis_ashi_l = distanceBetween_ashi_l.distance; direct distance between two points of leg
        float $disSub_ashi_l = plusMinusAverage_ashi_factDist_Sub_l.output3Dx; arbitrary ratio between leg and arm
        multiplyDivide_ashi_smartRatio_l.input1X = $sof_ashi_l*( 1-exp(-1*($dis_ashi_l-$disSub_ashi_l)/$sof_ashi_l) )+ $disSub_ashi_l;
        x = softness * (1-exp(-1*(length - ratio)/softness) ) + (ratio)
        #aim constraint is used to keep the group/object pointed at the leg
        
float $sof_ashi_l = condition_ashi_softness_l.outColorR;
float $dis_ashi_l = distanceBetween_ashi_l.distance;
float $disSub_ashi_l = plusMinusAverage_ashi_factDist_Sub_l.output3Dx;
expression2.test1 = $sof_ashi_l*( 1-exp(-1*($dis_ashi_l-$disSub_ashi_l)/$sof_ashi_l) )+ $disSub_ashi_l;
expression2.exp1 = (1-exp(-1*($dis_ashi_l-$disSub_ashi_l)/$sof_ashi_l) )+ $disSub_ashi_l;
        
        
        float $sof_leg_l =  condition1.outColorR;
        float $dis_leg_l = addDoubleLinear3.output; #this one check if it`s a measurement node or the absolute node later on
        float $ratio_leg = multiplyDivide1.output;
        group1.tx = $sof_leg_l*( 1-exp(-1*($dis_leg_l-$ratio_leg)/$sof_leg_l) ) + $ratio_leg;
    
float $sof_leg_l = condition1.outColorR;
float $dis_leg_l = distanceBetween1.distance;
float $ratio_leg = multiplyDivide1.outputX;
group1.ty = ( 1-exp(-1*($dis_leg_l-$ratio_leg)) );

expression2.softness = ik_Foot_Left.softIK;
expression2.softRatio = addDoubleLinear3.output - condition1.outColorR;
expression2.dist1 = distanceBetween1.distance;
expression2.ratio = multiplyDivide1.outputX;
expression2.testExp = 1-exp(expression2.softness);
expression2.testExp2 = expression2.softness * (1-exp(-1*(distanceBetween1.distance - expression2.softRatio)/expression2.softRatio));
expression2.distDiff = distanceBetween1.distance - addDoubleLinear3.output;
expression2.group1ty = expression2.softness * (1-exp(-1*(expression2.dist1 - expression2.ratio)/expression2.softRatio))
group1.ty = expression2.softness * (1-exp(-1*(distanceBetween1.distance - expression2.ratio)/expression2.softRatio));

1 - exp(-1*(1- 

    
        '''

class PrismPicker():

    def __init__(self):
        # declaring all attributes to be used
        self.editMode = False

        if pm.ls('SynopticNode', type='transform'): # defining the synoptic node that all data will be read from and written under
            self.synopticNode = pm.ls('SynopticNode', type='transform')[0]
        else:
            pass
            # create node only when user attempts to save. This is to reduce unwanted garbage nodes from building up.
            # self.synopticNode = pm.shadingNode('condition', asUtility=True, name='SypnoticNode')

        
        # picker data will be written and stored under the MASTER controller (as an string attribute under the extra attributes)
        # picker will search for and load the character picker data from the master controller upon initialisation

        # there will be an option for adding additional characters into picker and then saving it into characters in scene if needed.

        # detect the presence of a PrismRigger rig and identify

        # this section will initialize and load the picker data from character

        self.loadPicker()
        self.pickerUI()
        # execute buildpicker() with the first argument of the charaList

        try:
            self.buildPicker(self.charaOptionMenuList[0])
            #print('pickerData', self.pickerData)  # for debugging purposes
            #print('charaList', self.charaListDump)  # for debugging purposes
        except:
            print('ORENDA rig not present')


    def loadPicker(self):

        # check for list of charas under SynopticNode
        if pm.ls('SynopticNode'):
            pickerDataName = [i for i in pm.listAttr(self.synopticNode) if 'PickerData' in i]
        else:
            pickerDataName = []
        self.charaListDump = {}
        self.charaOptionMenuList = []

        for i in range(len(pickerDataName)):
            self.charaListDump[pickerDataName[i][:-11]] = pm.getAttr(self.synopticNode+'.%s' %pickerDataName[i])
            self.charaOptionMenuList.append(pickerDataName[i][:-11])
            #print self.charaListDump

    def pickerUI(self):
        # checking for duplicate windows
        windowID = 'prismPicker'

        if pm.window(windowID, exists=True):
            pm.deleteUI(windowID)
            pm.windowPref('prismPicker', remove=True)

        # creating window
        pm.window(windowID, title='ORENDA Synoptic', widthHeight=(410, 650), tlc=(100,300))

        # menu bar
        menuBar = pm.menuBarLayout()

        # character
        menuPicker = pm.menu(label=u'キャラ', parent=menuBar)
        menuNew= pm.menuItem(label=u'新しいキャラ', parent=menuPicker, subMenu=False)
        menuLoad = pm.menuItem(label=u'読み込む', parent=menuPicker, subMenu=False, command=self.importFromFile)

        # edit
        menuEdit = pm.menu(label=u'編集', parent=menuBar)

        self.menuEditButton = pm.menuItem(label=u'Synopticを編集', parent=menuEdit, subMenu=False, command=self.editModeSwitch)
        pm.menuItem(divider=True, parent=menuEdit, subMenu=False)
        self.menuSave = pm.menuItem(label=u'保存', parent=menuEdit, subMenu=False, command=partial(self.saveToChar, 'export'))
        self.menuDel = pm.menuItem(label=u'削除', parent=menuEdit, subMenu=False, command=self.deleteFromChar)


        # label
        self.masterCol = pm.columnLayout('master col', width=400)
        self.labelLayout = pm.frameLayout(label=u'設定', labelIndent=5, marginHeight=5, nch=5, width=400,
                                          parent=self.masterCol)

        # optionMenu
        pickerListLayout = pm.rowLayout(parent=self.labelLayout, nc=10)
        pm.text(label=u'キャラクター名：', width=85, align='right')

        self.charaOptionMenu = pm.optionMenu(changeCommand=self.buildPicker, parent=pickerListLayout)
        #sorting option menu alphabetically
        for i in self.charaOptionMenuList:
            pm.menuItem(i, label=i, parent=self.charaOptionMenu)

        # button layout
        pickerLayout = pm.columnLayout(parent=self.masterCol)
        self.buttonLayout = pm.rowLayout(parent=pickerLayout, nc=10)
        # buttons
        pm.text(' ', width=85)
        pm.button('newChara', label=u'新しいキャラクター', command=partial(self.saveToChar, 'new'), parent=self.buttonLayout)
        pm.button('overwritePicker', label=u'保存する', command=self.saveToChar, parent=self.buttonLayout)
        pm.button('export', label=u'書き出す', command=partial(self.saveToChar, 'export'), parent=self.buttonLayout)

        # picker
        # pickerLayout = pm.columnLayout(parent=self.masterCol)
        self.pickerFrame = pm.frameLayout(label='Synoptic', bgc=(0, 0, 0), parent=self.masterCol, bv=0, backgroundShade=1, height=500, width=400, collapsable=0)
        




        self.pickerLayout = pm.formLayout(numberOfDivisions=100, dgc=self.drag1, dpc=self.createButton, parent=self.pickerFrame)

        pm.image(image=r'\\p.sv\Tool\PrismTools\PrismRigPicker\BG_Base.png', width=400, height=450)

        '''
        button1 = pm.iconTextButton(style='textOnly', bgc=(0,1,0), width=20, height=20)
        button2 = pm.iconTextButton(style='textOnly', bgc=(1, 1, 0), width=20, height=20)

        pm.formLayout(self.pickerLayout, edit=True,
                      attachPosition=[(button1, 'left', 0, 5),
                                      (button1, 'top', 0, 5),
                                      (button2, 'left', 0, 50),
                                      (button2, 'top', 0, 50)])
        '''

        # bottom buttons
        self.bottomButtonLayout = pm.rowLayout(parent=self.masterCol, nc=10)
        pm.text(' ', width=30, parent=self.bottomButtonLayout)
        pm.button('selectAll', label=u'全部を選択する', parent=self.bottomButtonLayout, width=100, command=self.selectAll)
        pm.text(' ', width=20, parent=self.bottomButtonLayout)
        pm.button('fkikR', label=u'右手->IK', parent=self.bottomButtonLayout, width=50, command=partial(self.fkikSwitch, 'Right'))
        pm.text(' ', width=5, parent=self.bottomButtonLayout)
        pm.button('fkikL', label=u'左手->IK', parent=self.bottomButtonLayout, width=50, command=partial(self.fkikSwitch, 'Left'))
        pm.text(' ', width=5, parent=self.bottomButtonLayout)
        pm.button('ikfkR', label=u'右手->FK', parent=self.bottomButtonLayout, width=50, command=partial(self.ikfkSwitch, 'Right'))
        pm.text(' ', width=5, parent=self.bottomButtonLayout)
        pm.button('ikfkL', label=u'左手->FK', parent=self.bottomButtonLayout, width=50, command=partial(self.ikfkSwitch, 'Left'))


        pm.showWindow() # calls the window out
        #pm.window(windowID, edit = True)

    def buildPicker(self, charaName):
        # the format for the picker raw data should be
        # ControllerName Width Height FromLeft FromTop Colour
        # for a total of 6 items in the list
        self.pickerData = {}
        # delete the all the children of the layout to make space

        # rebuilding


        # clearing UI for rebuilding
        for i in pm.lsUI(type='iconTextButton'):
            if 'button_' in i:
                pm.deleteUI(i)

        try:
            for j in self.charaListDump[charaName].split('\n'):
                self.pickerData[j.split(' ')[0]] = j[len(j.split(' ')[0] + ' '):].split(' ')

        except:
            pass

        '''
        for i in dump.split('\n'):
            self.pickerData[i.split(' ')[0]] = i.lstrip(i.split(' ')[0] + ' ').split(' ')
        '''
        #print self.pickerData[i][-1].split(',')[0]
        #print self.pickerData
        #print self.charaListDump
        #print self.pickerData
        for i in self.pickerData:
            #print(self.pickerData[i], i)
            pickerButton = pm.iconTextButton('button_' + i, style='textOnly',
                              bgc=(float(self.pickerData[i][-1].split(',')[0]), float(self.pickerData[i][-1].split(',')[1]), float(self.pickerData[i][-1].split(',')[2])), #colour
                              width=int(self.pickerData[i][0]),
                              height=int(self.pickerData[i][1]),
                                            command=partial(self.selectFunc, i),
                                             parent=self.pickerLayout)
            #print('width:%s'%str(self.pickerData[i][0]) + ' height:%s'%str(self.pickerData[i][1]))
            pm.formLayout(self.pickerLayout, edit=True,
                          attachPosition=[(pickerButton, 'left', float(self.pickerData[i][0])/-2, float(self.pickerData[i][2])),
                                          (pickerButton, 'top', float(self.pickerData[i][1])/-2, float(self.pickerData[i][3]))])

    def drag1(self, *dra1):
        # first function for creating a button
        self.but1 = dra1 # storing the coordinates for the middle click input
        print(dra1[-3], dra1[-2])
        pass

    def createButton(self, *dragControl):

        # perform a check to see if edit mode is on. if not, then function will not work.
        if self.editMode == False:
            if len(pm.ls(sl=True)) == 0:
                print 'dragDropSuccess'
            return

        # the rest of the function for creating a button is in this function
        #print(dragControl[-3], dragControl[-2])

        if len(pm.ls(sl=True)) == 0:
            return

        colourInput = pm.confirmDialog(title=u'新しいボタン', message=u'ボタンの色を選んでください', button=[u'赤', u'青', u'緑', 'Cancel'], dismissString='Cancel', defaultButton='Cancel', cancelButton='Cancel')
        if colourInput == u'赤':
            colour = (1,0,0)
        elif colourInput == u'緑':
            colour = (0,1,0)
        elif colourInput == u'青':
            colour = (0,0,1)
        else:
            return
        print 'dragDropSuccess'
        # fromLeft height will bet self.but1[0]
        # fromTop height will bet self.but1[1]
        try:
            createBut = pm.iconTextButton('button_' + pm.ls(sl=True)[0], style='textOnly',
                                          bgc=colour,
                                          width=(dragControl[-3] - int(self.but1[-3])),
                                          height=(dragControl[-2] - int(self.but1[-2])),
                                          command=partial(self.selectFunc, pm.ls(sl=True)),
                                          parent=self.pickerLayout)
            pm.formLayout(self.pickerLayout, edit=True,
                          attachPosition=[(createBut, 'left', 0, float(self.but1[-3])/6),
                                          (createBut, 'top', 0, float(self.but1[-2])/4.74)])

        except:
            pm.confirmDialog(title='ORENDA  picker', message=u'そのコントローラーも登録しました。。')


        # gonna have to add the button data to the dictinary and store it in memory and then write a small section of logic to export it out into the format I set above
        # the format for the picker raw data should be
        # ControllerName Width Height FromLeft FromTop Colour
        self.charaListDump
        self.pickerData[str(pm.ls(sl=True)[0])] = [(dragControl[-3] - int(self.but1[-3])), (dragControl[-2] - int(self.but1[-2])), self.but1[-3], self.but1[-2], colour]
        # print self.pickerData[pm.ls(sl=True)[0]]

        print('printing self.picketData')
        print(self.pickerData)
        self.saveToChar(False)

        self.loadPicker()


    def deleteButton(self, buttonName):
        pass

    def selectFunc(self, target):
        if pm.getModifiers() == 0:
            pm.select(target.split(','))
        elif pm.getModifiers() == 1:
            pm.select(target.split(','), add=True)
        elif pm.getModifiers() == 4:
            pm.select(target.split(','), deselect=True)

    def selectAll(self, mayaFalse):
        for i in self.pickerData:
            print i
        if pm.getModifiers() == 0: # no modifiers
            pm.select(clear=True)
            for i in self.pickerData:
                try:
                    pm.select(i, add=True)
                except:
                    pm.select(i.split(','), add=True)
        elif pm.getModifiers() == 1: # shift is held down
            for i in self.pickerData:
                try:
                    pm.select(i, add=True)
                except:
                    pm.select(i.split(','), add=True)
        elif pm.getModifiers() == 4: #ctrl is held down
            for i in self.pickerData:
                try:
                    pm.select(i, deselect=True)
                except:
                    pm.select(i.split(','), deselect=True)
        pass

    def fkikSwitch(self, *dir):#fk switch to IK
        #pm.confirmDialog(message=u'制作中です。', title=u'ORENDA Synoptic')

        default = [float(i) for i in str(pm.getAttr('ik_Hand_%s.default' %dir[0])).split(' ')]
        fkTrans = [pm.xform('fk_Hand_%s' %dir[0], ws=True, q=True, t=True)[0] - default[0], pm.xform('fk_Hand_%s' %dir[0], ws=True, q=True, t=True)[1] - default[1], pm.xform('fk_Hand_%s' %dir[0], ws=True, q=True, t=True)[2] - default[2]]

        pm.xform('pv_Elbow_%s' %dir[0], t=pm.xform('fk_ForeArm_%s' %dir[0], ws=True, q=True, t=True), ws=True)#moving the polevector to elbow
        pm.xform('ik_Hand_%s' %dir[0], t=fkTrans, ro=pm.xform('fk_Hand_%s' %dir[0], q=True, ro=True))#moving the hand IK to wrist

        pm.setAttr('Character_%sArm_parentConstraint1.BoneIK_%sArmW1' %(dir[0], dir[0]), 1)#keying the constraints on the chara bone to FK
        pm.setAttr('Character_%sArm_parentConstraint1.BoneFK_%sArmW0' %(dir[0], dir[0]), 0)
        pm.setAttr('Character_%sForeArm_parentConstraint1.BoneIK_%sForeArmW1' %(dir[0], dir[0]), 1)
        pm.setAttr('Character_%sForeArm_parentConstraint1.BoneFK_%sForeArmW0' %(dir[0], dir[0]), 0)
        pm.setAttr('Character_%sHand_parentConstraint1.BoneIK_%sHandW1' %(dir[0], dir[0]), 1)
        pm.setAttr('Character_%sHand_parentConstraint1.BoneFK_%sHandW0' %(dir[0], dir[0]), 0)

    # IKFK switch needs more work. Leave it aside for now to work on other stuff
    def ikfkSwitch(self, *dir):
        #pm.confirmDialog(message=u'制作中です。', title=u'ORENDA Synoptic')
        #resetting all extra gimbals to 0
        pm.setAttr('fk_UpperArm_%s_gimbal.rotate' %dir[0], (0, 0, 0))
        pm.setAttr('fk_ForeArm_%s_gimbal.rotate' %dir[0], (0, 0, 0))
        pm.setAttr('fk_Hand_%s_gimbal.rotate' %dir[0], (0, 0, 0))

        pm.xform('fk_UpperArm_%s' %dir[0], rotation=pm.xform('Character_%sArm' %dir[0], rotation=True, q=True, ws=True),
                 ws=True) #setting the rotate for upper arm
        pm.xform('fk_ForeArm_%s' %dir[0], rotation=pm.xform('Character_%sForeArm' %dir[0], rotation=True, q=True, ws=True),
                 ws=True)
        pm.xform('fk_Hand_%s' %dir[0], rotation=pm.xform('Character_%sHand' % dir[0], rotation=True, q=True, ws=True),
                 ws=True)

        pm.setAttr('Character_%sArm_parentConstraint1.BoneFK_%sArmW0' %(dir[0], dir[0]), 1)#keying the constraints on the chara bone to IK
        pm.setAttr('Character_%sArm_parentConstraint1.BoneIK_%sArmW1' %(dir[0], dir[0]), 0)
        pm.setAttr('Character_%sForeArm_parentConstraint1.BoneFK_%sForeArmW0' %(dir[0], dir[0]), 1)
        pm.setAttr('Character_%sForeArm_parentConstraint1.BoneIK_%sForeArmW1' %(dir[0], dir[0]), 0)
        pm.setAttr('Character_%sHand_parentConstraint1.BoneFK_%sHandW0' %(dir[0], dir[0]), 1)
        pm.setAttr('Character_%sHand_parentConstraint1.BoneIK_%sHandW1' %(dir[0], dir[0]), 0)
        #pm.xform('Character_%sArm' %dir, rotation=True, q=True, ws=True)
        #pm.xform('Character_%sForeArm' % dir, rotation=True, q=True, ws=True)
        #pm.xform('Character_%sHand' % dir, rotation=True, q=True, ws=True)

        #try to use vectors to position the pole vector
        pass

    def importHumanIK(self):
        pass

    def saveToChar(self, *mayaFalse): #mayafalse becomes a container for all optional arguments, so the argument for which mode of the function to be used becomes mayaFalse[0]
        # dump the current buttons into a readable format onto the master controller of the main char as string attribute
        if not pm.ls('SynopticNode', type='transform'): #creating synoptic node if it doesn't already exist
            self.synopticNode = pm.group(name='SynopticNode', empty=True)
        if mayaFalse[0] == 'new':
            pm.promptDialog(title=u'キャラ名前',
                            message=u'キャラクターを書いてください',
                            button=['OK', 'Cancel'],
                            defaultButton='OK',
                            cancelButton='Cancel',
                            dismissString='Cancel')
            pm.addAttr(self.synopticNode, ln=pm.promptDialog(q=True, text=True) + '_PickerData', dt='string')
            self.loadPicker()
            self.pickerUI()
            self.buildPicker(pm.promptDialog(q=True, text=True) + '_PickerData')
            #print 'charaListDump is ' + str(self.charaListDump)
            #pm.optionMenu(self.charaOptionMenu, e=True, value=pm.promptDialog(q=True, text=True))
            return

        saveData = '' # this is the string that is gonna be exported out
        for i in self.pickerData:
            saveData = str(saveData) + i + ' '
            for dataContent in self.pickerData[i]:
                if '(' in str(dataContent):
                    saveData = saveData + str(dataContent).strip('(').strip(')').replace(', ', ',')
                else:
                    saveData = saveData + str(dataContent) + ' '
            saveData = saveData + '\n'

        saveData = saveData.replace(' \n', '\n')
        print(saveData)
        if mayaFalse[0] == 'new':
            pm.promptDialog(title=u'キャラ名前',
                            message=u'キャラクターを書いてください',
                            button=['OK', 'Cancel'],
                            defaultButton='OK',
                            cancelButton='Cancel',
                            dismissString='Cancel')
            pm.addAttr(self.synopticNode, ln=pm.promptDialog(q=True, text=True) + '_PickerData', dt='string')
            self.loadPicker()
            self.pickerUI()
            #self.buildPicker(pm.promptDialog(q=True, text=True) + '_PickerData')
            #pm.addAttr(self.synopticNode, ln='Test', dt='string') delete later after it runs
        elif mayaFalse[0] == 'export':
            exportLocation = pm.fileDialog2(ds=2, ff='ORENDA Synoptic files (*syn) (*.syn)', fm=1)
            expFile = open(exportLocation, 'w+')
            expFile.write(saveData.rstrip('\n'))
            expFile.close()

        # the overwrite function can be deprecated since overwriting is automatic.

        # overwrite
        else:
            '''
            if not '%s_PickerData' %pm.optionMenu(self.charaOptionMenu, value=True, q=True) in pm.listAttr('%s_Master_Controller' %pm.optionMenu(self.charaOptionMenu, value=True, q=True)):
                pm.addAttr('%s_Master_Controller' % pm.optionMenu(self.charaOptionMenu, value=True, q=True))
            '''
            pm.setAttr('%s.%s_PickerData' %(self.synopticNode, pm.optionMenu(self.charaOptionMenu, value=True, q=True)), saveData.rstrip('\n').lstrip(' ').lstrip('\n'))

        ''' Can be deprecated 
        elif save == 'node':
            # create a condition node that is attached to the master controller and store all the data there.
            # if there is no master controller, the node will be created as a separate floating object? so that the tool can be used for non prism rigs
            pm.shadingNode('condition', asUtility=True, name='SypnoticNode')
            pass
        '''


    def importFromFile(self, mayaFalse):
        # import the picker from an external file format previously written. Should be quite simple

        importLocation = pm.fileDialog2(ds=2, ff='ORENDA Synoptic files (*txt) (*.txt)', fm=1)
        if importLocation == None: # in case the user closes the file dialog without selecting anything
            return
        print importLocation
        impFile = open(importLocation[0], 'r')
        charaName = importLocation[0].split('/')[-1].rstrip('.txt')
        self.charaListDump[charaName] = impFile.read()
        impFile.close()

        # this part checks if charaListDump has any new characters that are not added onto the list and adds them.
        for i in self.charaListDump:
            if i in pm.optionMenu(self.charaOptionMenu, q=True, itemListShort=True):
                continue

            pm.menuItem(i, label=i, parent=self.charaOptionMenu)
        self.buildPicker(charaName)
        '''
        except:
            self.errorDialog()
        '''

    def deleteFromChar(self, mayaFalse):
        # delete the current picker data from character. Should be quite simple.
        try:
            pm.deleteAttr('%s_Master_Controller.%s_PickerData' %(pm.optionMenu(self.charaOptionMenu, value=True, q=True),pm.optionMenu(self.charaOptionMenu, value=True, q=True)))
        except:
            self.errorDialog()

    def editModeSwitch(self, mayaFalse):
        if self.editMode == False:
            self.editMode = True
        elif self.editMode == True:
            self.editMode = False

        if self.editMode == True:
            pm.frameLayout(self.pickerFrame, e=True, bgc=(1, 1, 0), label=u'編集モード') # changing the frame colour of the picker header
            for i in pm.lsUI(type='iconTextButton'): #changing command to delete button
                if 'button_' in i:
                    pm.iconTextButton(i, e=True, command=partial(self.deleteButton, i))

        if self.editMode == False:
            pm.frameLayout(self.pickerFrame, e=True, bgc=(0, 0, 0), label='Synoptic')  # changing the frame colour of the picker header
            for i in pm.lsUI(type='iconTextButton'):
                if 'button_' in i:
                    pm.iconTextButton(i, e=True, command=partial(self.selectFunc, pm.ls(sl=True)))

    def errorDialog(self, mayaFalse, *arg):
        # create additional confirm dialogs based on arguments given
        pm.confirmDialog(message=u'エラーです', title=u'ORENDA Synoptic')

    def renameChara(self):
        pass
'''
pl16:R_AF1_ROT,
pl16:R_AF2_ROT,
pl16:R_AF3_ROT,
pl16:R_BF1_ROT,
pl16:R_BF2_ROT,
pl16:R_BF3_ROT,
pl16:R_CF1_ROT,
pl16:R_CF2_ROT,
pl16:R_CF3_ROT,
pl16:R_EF1_ROT,
pl16:R_EF2_ROT,
pl16:R_EF3_ROT,
pl16:R_FF1_ROT,
pl16:R_FF2_ROT,
pl16:R_FF3_ROT,
pl16:R_DF_ROT
'''