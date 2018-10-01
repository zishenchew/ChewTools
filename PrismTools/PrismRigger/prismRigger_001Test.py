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
        contr = pm.circle(nr=(1,0,0), r=float(self.jointController[contrName][1]), name=self.jointController[contrName][2])[0]
        grp = pm.group(contr, name=str(self.jointController[contrName][2] + '_grp'))
        #pm.rename(contr, self.jointController[contrName][2])  # renaming control
        pm.xform(grp, t=pm.xform(contrName, ws=True, q=True, t=True),
                 ro=pm.xform(contrName, ws=True, q=True, ro=True),
                 scale=(5, 5, 5))  # translate controller to appropriate position, scaling to 5
        #pm.setAttr(grp.translate, lock=True) #locking attributes
        #pm.setAttr(grp.rotate, lock=True)
        #pm.setAttr(grp.scale, lock=True)
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

                grp = pm.group(contr, name=str(self.jointController[i][3] + '_grp'))

                if 'Hand' in self.jointController[i][3]:
                    pm.xform(grp, t=pm.xform(i, ws=True, q=True, t=True),
                             ro=pm.xform(i, ws=True, q=True, ro=True),
                             ws=True,
                             scale=(5,5,5)) #translate controller to appropriate position, scaling to 5
                    pm.makeIdentity(contr, apply=True, translate=True, scale=True)
                elif 'Foot' in self.jointController[i][3]:
                    pm.xform(grp, t=pm.xform(i, ws=True, q=True, t=True),
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
            #print i
            try:
                pm.parent(str(self.jointController[i][2] + '_grp'), self.jointController[str(pm.listRelatives(i, p=True)[0])][2])
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
        pm.parentConstraint('BoneFK_Hips', 'Character_Hips', mo=False, w=1)

    def exportWeights(self): #besides exporting the weights, copy them into memory so that the rigger can make slight bone shifting
        pass
    def importWeights(self): #copy from memory if the data exists, so slight bone shifts can be made
        pass

class PrismPicker():

    def __init__(self):
        # declaring all attributes to be used
        self.editMode = False

        if pm.ls('SynopticNode', type='condition'): # defining the synoptic node that all data will be read from and written under
            self.synopticNode = pm.ls('SynopticNode', type='condition')[0]
        else:
            self.synopticNode = pm.shadingNode('condition', asUtility=True, name='SypnoticNode')
        
        # picker data will be written and stored under the MASTER controller (as an string attribute under the extra attributes)
        # picker will search for and load the character picker data from the master controller upon initialisation

        # there will be an option for adding additional characters into picker and then saving it into characters in scene if needed.

        # detect the presence of a PrismRigger rig and identify

        # this section will initialize and load the picker data from character

        self.loadPicker()
        self.pickerUI()
        # execute buildpicker() with the first argument of the charaList

        try:
            for i in self.charaListDump:
                pass
            self.buildPicker(i)
            #print('pickerData', self.pickerData)  # for debugging purposes
            #print('charaList', self.charaListDump)  # for debugging purposes
        except:
            print('ORENDA rig not present')


    def loadPicker(self):

        # check for list of charas under Master_Controller
        if pm.ls('*Master_Controller'):
            pickerDataName = [i for i in pm.listAttr('*Master_Controller') if 'PickerData' in i]
        else:
            pickerDataName = []
        self.charaListDump = {}


        for i in range(len(pickerDataName)):
            self.charaListDump[pickerDataName[i].rstrip('_PickerData')] = pm.getAttr('*Master_Controller.%s' %pickerDataName[i])
        '''
        for i in pickerDataName:
            self.charaListDump[i.rstrip('_PickerData')] = pm.getAttr('Master_Controller.%s' %pickerDataName[i])
        '''

    def pickerUI(self):
        # checking for duplicate windows
        windowID = 'prismPicker'
        if pm.window(windowID, exists=True):
            pm.deleteUI(windowID)
            pm.windowPref('primPicker', remove=True)

        # creating window
        pm.window(windowID, title='ORENDA Synoptic', widthHeight=(600, 800))

        # menu bar
        menuBar = pm.menuBarLayout()

        # character
        menuPicker = pm.menu(label=u'キャラ', parent=menuBar)
        menuNew= pm.menuItem(label=u'新しいキャラ', parent=menuPicker, subMenu=False)
        menuLoad = pm.menuItem(label=u'読み込む', parent=menuPicker, subMenu=False, command=self.importFromFile)

        # edit
        menuEdit = menuPicker = pm.menu(label=u'編集', parent=menuBar)

        self.menuEditButton = pm.menuItem(label=u'Synopticを編集', parent=menuEdit, subMenu=False, command=self.editModeSwitch)
        pm.menuItem(divider=True, parent=menuEdit, subMenu=False)
        self.menuSave = pm.menuItem(label=u'保存', parent=menuEdit, subMenu=False, command=partial(self.saveToChar, 'export'))
        self.menuDel = pm.menuItem(label=u'削除', parent=menuEdit, subMenu=False, command=self.deleteFromChar)


        # label
        self.masterCol = pm.columnLayout('master col', width=600)
        self.labelLayout = pm.frameLayout(label=u'設定', labelIndent=5, marginHeight=5, nch=5, width=590,
                                          parent=self.masterCol)

        # optionMenu
        pickerListLayout = pm.rowLayout(parent=self.labelLayout, nc=10)
        pm.text(label=u'キャラクター名：', width=85, align='right')
        self.charaOptionMenu = pm.optionMenu(changeCommand=self.buildPicker, parent=pickerListLayout)
        for i in self.charaListDump:
            pm.menuItem(i, label=i, parent=self.charaOptionMenu)

        # button layout
        pickerLayout = pm.columnLayout(parent=self.masterCol)
        self.buttonLayout = pm.rowLayout(parent=pickerLayout, nc=10)
        # buttons
        pm.button('overwritePicker', label=u'保存する', command=self.saveToChar, parent=self.buttonLayout)


        # picker
        # pickerLayout = pm.columnLayout(parent=self.masterCol)
        self.pickerFrame = pm.frameLayout(label='Synoptic', bgc=(0, 0, 0), parent=self.masterCol, bv=0, backgroundShade=1, height=500, width=590, collapsable=0)
        




        self.pickerLayout = pm.formLayout(numberOfDivisions=100, dgc=self.drag1, dpc=self.createButton)


        '''
        button1 = pm.iconTextButton(style='textOnly', bgc=(0,1,0), width=20, height=20)
        button2 = pm.iconTextButton(style='textOnly', bgc=(1, 1, 0), width=20, height=20)

        pm.formLayout(self.pickerLayout, edit=True,
                      attachPosition=[(button1, 'left', 0, 5),
                                      (button1, 'top', 0, 5),
                                      (button2, 'left', 0, 50),
                                      (button2, 'top', 0, 50)])
        '''

        pm.showWindow() # calls the window out
        # pm.window(windowID, edit = True, widthHeight = (600,800))

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
                print i
                pm.deleteUI(i)

        for j in self.charaListDump[charaName].split('\n'):
            self.pickerData[j.split(' ')[0]] = j.lstrip(j.split(' ')[0] + ' ').split(' ')

        '''
        for i in dump.split('\n'):
            self.pickerData[i.split(' ')[0]] = i.lstrip(i.split(' ')[0] + ' ').split(' ')
        '''
        #print self.pickerData[i][-1].split(',')[0]
        #print self.pickerData
        #print self.charaListDump
        for i in self.pickerData:
            pickerButton = pm.iconTextButton('button_' + i, style='textOnly',
                              bgc=(float(self.pickerData[i][-1].split(',')[0]), float(self.pickerData[i][-1].split(',')[1]), float(self.pickerData[i][-1].split(',')[2])), #colour
                              width=int(self.pickerData[i][0]),
                              height=int(self.pickerData[i][1]),
                                            command=partial(self.selectFunc, i),
                                             parent=self.pickerLayout)

            pm.formLayout(self.pickerLayout, edit=True,
                          attachPosition=[(pickerButton, 'left', int(self.pickerData[i][2]), 0),
                                          (pickerButton, 'top', int(self.pickerData[i][3]), 0)])

    def drag1(self, *dra1):
        # first function for creating a button
        self.but1 = dra1 # storing the coordinates for the middle click input
        print(dra1[-3], dra1[-2])
        pass

    def createButton(self, *dragControl):

        # perform a check to see if edit mode is on. if not, then function will not work.
        if self.editMode == False:
            return

        # the rest of the function for creating a button is in this function
        print(dragControl[-3], dragControl[-2])

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

        # fromLeft height will bet self.but1[0]
        # fromTop height will bet self.but1[1]

        createBut = pm.iconTextButton(pm.ls(sl=True)[0], style='textOnly',
                                      bgc=colour,
                                      width=(dragControl[-3] - int(self.but1[-3])),
                                      height=(dragControl[-2] - int(self.but1[-2])),
                                      command=partial(self.selectFunc, pm.ls(sl=True)),
                                      parent=self.pickerLayout)

        pm.formLayout(self.pickerLayout, edit=True,
                      attachPosition=[(createBut, 'left', self.but1[-3], 0),
                                      (createBut, 'top', self.but1[-2], 0)])

        # gonna have to add the button data to the dictinary and store it in memory and then write a small section of logic to export it out into the format I set above
        # the format for the picker raw data should be
        # ControllerName Width Height FromLeft FromTop Colour

        self.pickerData[str(pm.ls(sl=True)[0])] = [(dragControl[-3] - int(self.but1[-3])), (dragControl[-2] - int(self.but1[-2])), self.but1[-3], self.but1[-2], colour]
        # print self.pickerData[pm.ls(sl=True)[0]]

        print(self.pickerData)
        #self.saveToChar(False)

    def deleteButton(self, buttonName):
        pass

    def selectFunc(self, target):
        if pm.getModifiers() == 0:
            pm.select(target)
        elif pm.getModifiers() == 1:
            pm.select(target, add=True)
        elif pm.getModifiers() == 4:
            pm.select(target, deselect=True)

    def fkikSwitch(self, dir):#fk switch to IK
        pm.xform('pv_Elbow_%s' %dir, t=pm.xform('fk_ForeArm_%s' %dir, ws=True, q=True, t=True), ws=True)#moving the polevector to elbow
        pm.xform('ik_Hand_%s' %dir, t=pm.xform('fk_Hand_%s' %dir, ws=True, q=True, t=True), ro=pm.xform('fk_Hand_%s' %dir, ws=True, q=True, ro=True), ws=True)#moving the hand IK to wrist

    # IKFK switch needs more work. Leave it aside for now to work on other stuff
    def ikfkSwitch(self, dir):
        pm.xform('fk_UpperArm_%s' %dir, rotation=pm.xform('Character_%sArm' %dir, rotation=True, q=True, ws=True),
                 ws=True) #setting the rotate for upper arm
        pm.xform('fk_ForeArm_%s' %dir, rotation=pm.xform('Character_%sArm' %dir, rotation=True, q=True, ws=True),
                 ws=True)
        pm.xform('fk_Hand_%s' %dir, rotation=pm.xform('Character_%sHand' % dir, rotation=True, q=True, ws=True),
                 ws=True)
        #pm.xform('Character_%sArm' %dir, rotation=True, q=True, ws=True)
        #pm.xform('Character_%sForeArm' % dir, rotation=True, q=True, ws=True)
        #pm.xform('Character_%sHand' % dir, rotation=True, q=True, ws=True)

        #try to use vectors to position the pole vector
        pass

    def importHumanIK(self):
        pass

    def saveToChar(self, mayaFalse, *save):
        # dump the current buttons into a readable format onto the master controller of the main char as string attribute
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
        if save == 'new':
            pm.addAttr('Master_Controller', ln='Test', dt='string')
        elif save == 'export':
            exportLocation = pm.fileDialog2(ds=2, ff='ORENDA Synoptic files (*syn) (*.syn)', fm=1)
            expFile = open(exportLocation, 'w+')
            expFile.write(saveData.rstrip('\n'))
            expFile.close()

        elif save == 'node':
            # create a condition node that is attached to the master controller and store all the data there.
            # if there is no master controller, the node will be created as a separate floating object? so that the tool can be used for non prism rigs
            pm.shadingNode('condition', asUtility=True, name='SypnoticNode')
            pass

        else:
            if not '%s_PickerData' %pm.optionMenu(self.charaOptionMenu, value=True, q=True) in pm.listAttr('%s_Master_Controller' %pm.optionMenu(self.charaOptionMenu, value=True, q=True)):
                pm.addAttr('%s_Master_Controller' % pm.optionMenu(self.charaOptionMenu, value=True, q=True))
            pm.setAttr('%s_Master_Controller.%s_PickerData' %(pm.optionMenu(self.charaOptionMenu, value=True, q=True),pm.optionMenu(self.charaOptionMenu, value=True, q=True)), saveData.rstrip('\n'))

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
