# encoding: utf-8
'''
########################################################################################################################
  SER Pose Tester
  SER ポーズテスター
  
  担当者：チュー
  2018/02/14
  


tool to test poses


########################################################################################################################
'''

#importing global modules
import maya.cmds as cmds
import pymel.core as pm
import maya.OpenMayaAnim as animAPI



def poseTest():
    
    #reading index and pose data
    indexPath = r'\\p.sv\Prism\project\SER\user\chew\ref\animPose\index_motion.index'
    indexRead = open(indexPath, 'r')
    index = {}
    for i in indexRead:
        index[i.split()[0]] = i.split()[1]#create a dictionary where the value of the first digit of the index is the key, which will be driven by the value of the slider
    indexRead.close()
    for i in index:
        dump = open(index[i], 'r')
        index[i] = []
        for j in dump:
            index[i].append(j)
        dump.close()
    #creating hand index
    indexHandPath = r'\\p.sv\Prism\project\SER\user\chew\ref\animPose\index_hand.index'
    indexHandRead = open(indexHandPath, 'r')
    handIndex = {}
    for i in indexHandRead:
        handIndex[i.split()[0]] = i.split()[1]#create a dictionary where the value of the first digit of the index is the key, which will be driven by the value of the slider
    indexHandRead.close()
    for i in handIndex:
        dump = open(handIndex[i], 'r')
        handIndex[i] = []
        for j in dump:
            handIndex[i].append(j)
        dump.close()
    #reading the number of poses available and setting the limits accordingly
    upperLimit = len(index)
    handUpperLimit = len(handIndex)
    
    
    def setPose(_):
        for i in index[str(cmds.intSliderGrp(bodySliderGrp, query = True, value = True))]:
            split = i.split()
            try:
                pm.xform(split[0], translation = [split[1], split[2], split[3]], rotation = [split[4], split[5], split[6]])
            except:
                print('xform failed')
        
    def dummyCommand(_): #function nested inside
        print(cmds.intSliderGrp(bodySliderGrp, query = True, value = True))
    
    
    def setHandPose(_):
        for i in handIndex[str(cmds.intSliderGrp(handSliderGrp, query = True, value = True))]:
            split = i.split()
            try:
                pm.xform(split[0], translation = [split[1], split[2], split[3]], rotation = [split[4], split[5], split[6]])
            except:
                print('xform hand failed')
    
    def dummyCommand(_): #function nested inside
        print(cmds.intSliderGrp(bodySliderGrp, query = True, value = True))
    
    
    
    def resetChar(_):
        #reading data from pose
        tPose = []
        dummyData = r'\\p.sv\Prism\project\SER\user\chew\ref\animPose\default.pose'
        readFile = open(dummyData, 'r')
        for i in readFile:
            tPose.append(i.rstrip('\n'))
        readFile.close()
        
        for i in tPose:
            split = i.split()
            pm.xform(split[0], translation = [split[1], split[2], split[3]], rotation = [split[4], split[5], split[6]])
    
    def resetCharTPose(_):
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
        
    def poseWrite(_):
        #re-write at a later date
        '''
        line = ''
        output = []
        for i in pm.listRelatives(pm.ls(sl = True), ad = True, type = 'joint'):#remove ", type = 'joint'" for control rig version
            if pm.objectType(i) == "locator":
                continue
            line = line + i +  ' ' + str(pm.xform(i, q = True, translation = True)) +  ' ' + str(pm.xform(i, q = True, rotation = True)) +  ' ' + str(pm.xform(i, q = True, scale = True, relative = True))
            line = line.replace('[', '')
            line = line.replace(']', '')
            line = line.replace(',', '')
            line
            output.append(line)
            line = ''
            
        #writing pose into data
        defPose = open(r'\\p.sv\Prism\project\SER\user\chew\ref\animPose\101_01_dead.pose', 'w')
        for i in output:
            defPose.write(i)
            defPose.write('\n')
        defPose.close()
        '''
        pass
    
    def animSave(_):
        output = []
        for frame in range(int(animAPI.MAnimControl.maxTime().value()+1)):
            pm.currentTime(frame)
            line = ''
            for i in pm.listRelatives(pm.ls(sl = True), ad = True, type = 'joint'):#remove ", type = 'joint'" for control rig version
                if str(pm.listRelatives(i, parent = True)) == "[nt.Joint(u'Character_Head')]" or str(pm.listRelatives(i, parent = True)) ==  "[nt.Joint(u'Helper_Weapon2')]" or str(pm.listRelatives(i, parent = True)) ==  "[nt.Joint(u'Helper_Weapon1')]" or i[:5] == 'Joint':
                    continue
                if pm.objectType(i) == "locator":
                    continue
                line = line + str(int(pm.currentTime())) + ' ' + i +  ' ' + str(pm.xform(i, q = True, translation = True)) +  ' ' + str(pm.xform(i, q = True, rotation = True)) +  ' ' + str(pm.xform(i, q = True, scale = True, relative = True))
                line = line.replace('[', '')
                line = line.replace(']', '')
                line = line.replace(',', '')
                line
                output.append(line)
                line = ''
                
        #writing pose into data
        defPose = open(r'\\p.sv\Prism\project\SER\user\chew\ref\animPose\taiso.pose', 'w')
        for i in output:
            defPose.write(i)
            defPose.write('\n')
        defPose.close()
        pass
    
    def animLoad(_):
        
        if pm.autoKeyframe(q = True, state = True) == False:
            pm.autoKeyframe(state = True)
            resetAutoKey = 1
        
        animRead = open(r'\\p.sv\Prism\project\SER\user\chew\ref\animPose\taiso.pose', 'r')
        animDump = []
        for i in animRead:
            animDump.append(i)
        animRead.close()

        animData = {}
        for i in animDump:
            if i.split()[0] not in animData:
                animData[i.split()[0]] = []
            animData[i.split()[0]].append(i)

        pm.currentTime(0)
        pm.setKeyframe(pm.listRelatives('Character_Reference', ad = True, type = 'joint'))
        for i in sorted(animData):
            pm.currentTime(i, update = False)
            for jointData in animData[i]:
                split = jointData.split()
                pm.xform(split[1], translation = [split[2], split[3], split[4]], rotation = [split[5], split[6], split[7]])
        if resetAutoKey == 1:
            pm.autoKeyframe(state = False)
    
    
    #checking for duplicate windows
    windowID = 'poseTester'
    if pm.window(windowID, exists = True):
        pm.deleteUI(windowID)
        pm.windowPref( 'poseTester', remove=True )
    
    #creating window
    pm.window(windowID, title = 'SER Pose Tester | 2018/04/11', widthHeight = (600,300))
    pm.columnLayout( 'columnLayout01', columnOffset = ['left', 4])
    #pm.rowLayout( 'row1', nc = 5 )
    
    
    #buttons for first row
    poseFrame = pm.frameLayout(annotation = 'annotation test', label = u'ポーズ', labelIndent = 5, width = 590, parent = 'columnLayout01', marginHeight = 5)
    pm.rowLayout( 'row1', nc = 5, width = 400)
    handSliderGrp = pm.intSliderGrp(field = True, label = u'手ポーズ', minValue = 0, maxValue = handUpperLimit - 1, value = 0, adj = 3, columnWidth3 = [100,50,200], width = 525, dragCommand = setHandPose)
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
    
    row5 = pm.rowLayout( 'row5', nc = 2, parent = 'columnLayout01', width = 590, height = 20)
    col_5 = pm.columnLayout( 'col_5', width = 100, parent = row5)#spacer 
    col_6 = pm.columnLayout( 'col_6', width = 390, parent = row5)
    resetButton_ctrlRig = pm.button( 'taisou', label = u'体操モーション', width = 390, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = col_6, command = animLoad )
    
    row6 = pm.rowLayout(nc = 2, parent = 'columnLayout01', width = 590, height = 20)
    col_8 = pm.columnLayout( 'col_5', width = 100, parent = row6)#spacer 
    col_6 = pm.columnLayout( 'col_6', width = 390, parent = row6)
    pm.text(label = u'注意：このコマンドはちょっと時間かけそうです。')
    
    pm.showWindow()
    pm.window(windowID, edit = True, widthHeight = (600,300))