# encoding: utf-8
'''
########################################################################################################################
  NAVY Pose Library
  NAVY ポーズライブラリ

  担当者：チュー
  2018/07/09

NAVY 用ポーズライブラリ


Tool explanation:
    A dictionary is used to store all the transformations of the pose.
    Each key is the bone, while 2 values are assigned to each key. 1st value is a translation list of X Y and Z values, while the 2nd value is
    a rotation list of X Y and Z values.
    
    First part of the tool reads and dumps the transform data into the dictionary buffer.
    Then bulk of the tool iterates through the dictionary and assigns the transform of the opposite control. At appropriate points,
    the tool also applies a negative multiplication onto the rotation values.


########################################################################################################################
'''
import pymel.core as pm

def HIK_mirror(*mayaFalse):
    transBuffer = {} #creating a dictionary do use as a buffer to store all the transform values. The dictionary will
    for i in pm.listRelatives(pm.ls('Character1_Ctrl_Reference')[0], ad=True, type='transform'):
        #print i
        if ['translateX', 'translateY', 'translateZ', 'rotateX', 'rotateY', 'rotateZ'] == pm.listAttr(i, k=True):
            #print 'translate and rotate'
            transBuffer[i] = [pm.xform(i, q=True, t=True), pm.xform(i, q=True, ro=True)]#list 1 is translation value, list 2 is rotation values
        elif ['translateX', 'translateY', 'translateZ'] == pm.listAttr(i, k=True):
            #print 'translate'
            transBuffer[i] = [pm.xform(i, q=True, t=True), None] #list 1 is translation value, list 2 is rotation values
        elif ['rotateX', 'rotateY', 'rotateZ'] == pm.listAttr(i, k=True):
            #print 'rotate'
            transBuffer[i] = [None, pm.xform(i, q=True, ro=True)]
            
            
    for i in transBuffer:
        #print i
        if transBuffer[i][0] != None and transBuffer[i][1] != None:#if a null value is inserted into where the translate data is supposed to be, it will only execute a rotation
            #print 'translation and rotation'#for debugging
            if i.find('Left') != -1:
                #print i
                #print 'found left'
                pm.xform(i.replace('Left', 'Right'), t=[-transBuffer[i][0][0], transBuffer[i][0][1], transBuffer[i][0][2]])
                pm.xform(i.replace('Left', 'Right'), ro=[-transBuffer[i][1][0], -transBuffer[i][1][1], transBuffer[i][1][2]])
            elif i.find('Right') != -1:
                #print i
                pm.xform(i.replace('Right', 'Left'), t=[-transBuffer[i][0][0], transBuffer[i][0][1], transBuffer[i][0][2]])
                pm.xform(i.replace('Right', 'Left'), ro=[-transBuffer[i][1][0], -transBuffer[i][1][1], transBuffer[i][1][2]])
            else:
                #print i
                #print 'no left or right'
                pm.xform(i, t=[-transBuffer[i][0][0], transBuffer[i][0][1], transBuffer[i][0][2]])
                pm.xform(i, ro=[-transBuffer[i][1][0], -transBuffer[i][1][1], transBuffer[i][1][2]])                
        #print i
        if transBuffer[i][1] != None and transBuffer[i][0] == None:#if a null value is inserted into where the translate data is supposed to be, it will only execute a rotation
            #print 'rotation only'#for debugging
            if i.find('Left') != -1:
                #print i
                #print 'found left'
                if i.find('Shoulder') != -1:
                    pm.xform(i.replace('Left', 'Right'), ro=[transBuffer[i][1][0], -transBuffer[i][1][1], -transBuffer[i][1][2]])
                elif i.find('Leg') != -1:
                    pm.xform(i.replace('Left', 'Right'), ro=[-transBuffer[i][1][0], -transBuffer[i][1][1], transBuffer[i][1][2]])
                else:
                    pm.xform(i.replace('Left', 'Right'), ro=[transBuffer[i][1][0], transBuffer[i][1][1], transBuffer[i][1][2]])
                
            elif i.find('Right') != -1:
                #print i
                if i.find('Shoulder') != -1:
                    pm.xform(i.replace('Right', 'Left'), ro=[transBuffer[i][1][0], -transBuffer[i][1][1], -transBuffer[i][1][2]])
                elif i.find('Leg') != -1:
                    pm.xform(i.replace('Right', 'Left'), ro=[-transBuffer[i][1][0], -transBuffer[i][1][1], transBuffer[i][1][2]])
                else:
                    pm.xform(i.replace('Right', 'Left'), ro=[transBuffer[i][1][0], transBuffer[i][1][1], transBuffer[i][1][2]])
            else:
                #print i
                #print 'no left or right'
                pm.xform(i, ro=[-transBuffer[i][1][0], -transBuffer[i][1][1], transBuffer[i][1][2]])
            
        '''
        elif transBuffer[i][1] != None:#if a null value is inserted into where the rotation data is supposed to be, it will only execute a translation
            print 'executing rotation'
            print [-transBuffer[i][0][0], transBuffer[i][0][1], transBuffer[i][0][2]]
            pm.xform(i, t=[-transBuffer[i][0][0], transBuffer[i][0][1], transBuffer[i][0][2]])
        #transBuffer[i] = [pm.xform(i, q=True, t=True), pm.xform(i, q=True, ro=True)] #list 1 is translation value, list 2 is rotation values
        print i
        print(pm.listAttr(i, k=True))
        #print(pm.xform(i, q=True, ro=True))
        #print(pm.xform(i, q=True, t=True))
        #print(pm.keyframe(i, q=True, at=['translate', 'rotate'], time=pm.currentTime()))
        '''
        '''
        del transBuffer, i
        pm.xform(pm.ls(sl=True)[0], q=True, t=True)
        pm.xform(pm.ls(sl=True)[0], q=True, ro=True)
        '''
        pm.setKeyframe(pm.listRelatives(pm.ls('Character1_Ctrl_Reference')[0], ad=True, type='transform'))
        
def HIK_partial_mirror(*mayaFalse):
    try:
        transBuffer = {} #creating a dictionary do use as a buffer to store all the transform values. The dictionary will
        for i in pm.ls(sl=True):
            #print i
            if ['translateX', 'translateY', 'translateZ', 'rotateX', 'rotateY', 'rotateZ'] == pm.listAttr(i, k=True):
                #print 'translate and rotate'
                transBuffer[i] = [pm.xform(i, q=True, t=True), pm.xform(i, q=True, ro=True)]#list 1 is translation value, list 2 is rotation values
            elif ['translateX', 'translateY', 'translateZ'] == pm.listAttr(i, k=True):
                #print 'translate'
                transBuffer[i] = [pm.xform(i, q=True, t=True), None] #list 1 is translation value, list 2 is rotation values
            elif ['rotateX', 'rotateY', 'rotateZ'] == pm.listAttr(i, k=True):
                #print 'rotate'
                transBuffer[i] = [None, pm.xform(i, q=True, ro=True)]
                
                
        for i in transBuffer:
            #print i
            if transBuffer[i][0] != None and transBuffer[i][1] != None:#if a null value is inserted into where the translate data is supposed to be, it will only execute a rotation
                #print 'translation and rotation'#for debugging
                if i.find('Left') != -1:
                    #print i
                    #print 'found left'
                    pm.xform(i.replace('Left', 'Right'), t=[-transBuffer[i][0][0], transBuffer[i][0][1], transBuffer[i][0][2]])
                    pm.xform(i.replace('Left', 'Right'), ro=[-transBuffer[i][1][0], -transBuffer[i][1][1], transBuffer[i][1][2]])
                elif i.find('Right') != -1:
                    #print i
                    pm.xform(i.replace('Right', 'Left'), t=[-transBuffer[i][0][0], transBuffer[i][0][1], transBuffer[i][0][2]])
                    pm.xform(i.replace('Right', 'Left'), ro=[-transBuffer[i][1][0], -transBuffer[i][1][1], transBuffer[i][1][2]])
                else:
                    #print i
                    #print 'no left or right'
                    pm.xform(i, t=[-transBuffer[i][0][0], transBuffer[i][0][1], transBuffer[i][0][2]])
                    pm.xform(i, ro=[-transBuffer[i][1][0], -transBuffer[i][1][1], transBuffer[i][1][2]])                
            #print i
            if transBuffer[i][1] != None and transBuffer[i][0] == None:#if a null value is inserted into where the translate data is supposed to be, it will only execute a rotation
                #print 'rotation only'#for debugging
                if i.find('Left') != -1:
                    #print i
                    #print 'found left'
                    if i.find('Shoulder') != -1:
                        pm.xform(i.replace('Left', 'Right'), ro=[transBuffer[i][1][0], -transBuffer[i][1][1], -transBuffer[i][1][2]])
                    elif i.find('Leg') != -1:
                        pm.xform(i.replace('Left', 'Right'), ro=[-transBuffer[i][1][0], -transBuffer[i][1][1], transBuffer[i][1][2]])
                    else:
                        pm.xform(i.replace('Left', 'Right'), ro=[transBuffer[i][1][0], transBuffer[i][1][1], transBuffer[i][1][2]])
                    
                elif i.find('Right') != -1:
                    #print i
                    if i.find('Shoulder') != -1:
                        pm.xform(i.replace('Right', 'Left'), ro=[transBuffer[i][1][0], -transBuffer[i][1][1], -transBuffer[i][1][2]])
                    elif i.find('Leg') != -1:
                        pm.xform(i.replace('Right', 'Left'), ro=[-transBuffer[i][1][0], -transBuffer[i][1][1], transBuffer[i][1][2]])
                    else:
                        pm.xform(i.replace('Right', 'Left'), ro=[transBuffer[i][1][0], transBuffer[i][1][1], transBuffer[i][1][2]])
                else:
                    #print i
                    #print 'no left or right'
                    pm.xform(i, ro=[-transBuffer[i][1][0], -transBuffer[i][1][1], transBuffer[i][1][2]])
                
            '''
            elif transBuffer[i][1] != None:#if a null value is inserted into where the rotation data is supposed to be, it will only execute a translation
                print 'executing rotation'
                print [-transBuffer[i][0][0], transBuffer[i][0][1], transBuffer[i][0][2]]
                pm.xform(i, t=[-transBuffer[i][0][0], transBuffer[i][0][1], transBuffer[i][0][2]])
            #transBuffer[i] = [pm.xform(i, q=True, t=True), pm.xform(i, q=True, ro=True)] #list 1 is translation value, list 2 is rotation values
            print i
            print(pm.listAttr(i, k=True))
            #print(pm.xform(i, q=True, ro=True))
            #print(pm.xform(i, q=True, t=True))
            #print(pm.keyframe(i, q=True, at=['translate', 'rotate'], time=pm.currentTime()))
            '''
            '''
            del transBuffer, i
            pm.xform(pm.ls(sl=True)[0], q=True, t=True)
            pm.xform(pm.ls(sl=True)[0], q=True, ro=True)
            '''
            pm.setKeyframe(pm.listRelatives(pm.ls('Character1_Ctrl_Reference')[0], ad=True, type='transform'))
    except:
        pm.confirmDialog(title=u'NAVY 反転', message=u'選択してください')