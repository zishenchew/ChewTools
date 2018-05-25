# encoding: utf-8
'''
Finger Copy tool
Author: Chew

copies finger transform data from one hand to the other
'''
import pymel.core as pm


rFingers = pm.listRelatives('SER_103_n_Character1_Ctrl_RightHand', ad = True)
lFingers = pm.listRelatives('SER_103_n_Character1_Ctrl_LeftHand', ad = True)


def rightFingerToLeft(mayaFalse):
    counter = 0
    for i in rFingers:
        if i.find('Thumb') != -1:
            pm.xform(lFingers[counter], rotation = [-1 * pm.getAttr(i.rx), -1 * pm.getAttr(i.ry), -1 * pm.getAttr(i.rz)])
            
        else:
            pm.xform(lFingers[counter], rotation = [-1 * pm.getAttr(i.rx), -1 * pm.getAttr(i.ry), pm.getAttr(i.rz)])
        pm.setKeyframe(lFingers[counter])
        counter +=1
    
def leftFingerToRight(mayaFalse):
    counter = 0
    for i in lFingers:
        if i.find('Thumb') != -1:
            pm.xform(rFingers[counter], rotation = [-1 * pm.getAttr(i.rx),pm.getAttr(i.ry), -1 * pm.getAttr(i.rz)])
        else:
            pm.xform(rFingers[counter], rotation = [-1 * pm.getAttr(i.rx), -1 * pm.getAttr(i.ry), pm.getAttr(i.rz)])
        pm.setKeyframe(rFingers[counter])
        counter +=1