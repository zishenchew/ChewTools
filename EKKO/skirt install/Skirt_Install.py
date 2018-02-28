import os
import pymel.core as pm
import maya.cmds as cmds

def Install():

    cmds.file('K:/design/maya/data/tool/scData/Skirt_Install/Skirt_import.ma', i = True)
    pm.select('Rot|pelvis')
    tempDummy = pm.ls(sl = True)[0]

    for i in pm.listRelatives('|pelvis'):
        if i.find('hips') != -1:
            continue
        #change parents
        pm.parent(i, tempDummy)
        if i.find('tight') != -1:
            continue
        if i.find('waist') != -1:
            continue

        #this section is re-doing the driven keys for when the character squats down
        #break connections
        pm.disconnectAttr('|pelvis.translateY', '%s_rotateY.input' % i)
        pm.connectAttr(tempDummy.translateY, '%s_rotateY.input' % i)
        
        pm.disconnectAttr('|pelvis.translateY', '%s_rotateZ.input' % i)
        pm.connectAttr(tempDummy.translateY, '%s_rotateZ.input' % i)
    
        pm.disconnectAttr('|pelvis.translateY', '%s_rotateX.input' % i)
        pm.connectAttr(tempDummy.translateY, '%s_rotateX.input' % i)
        print('%s ok!' %i)

    pm.disconnectAttr('|pelvis|hips|R_thigh.rotateZ', 'RR_Skirt_shin01_translateX.input')#RR_shin01
    pm.connectAttr('Rot|pelvis|hips|R_thigh.rotateZ', 'RR_Skirt_shin01_translateX.input')
    pm.disconnectAttr('|pelvis.translateY', 'RR_Skirt_thigh01_translateZ.input')#RR_thigh01
    pm.connectAttr('Rot|pelvis.translateY', 'RR_Skirt_thigh01_translateZ.input')
    print('RR ok')
    
    pm.disconnectAttr('|pelvis|hips|L_thigh.rotateZ', 'LL_Skirt_shin01_translateX.input')#LL_shin01
    pm.connectAttr('Rot|pelvis|hips|L_thigh.rotateZ', 'LL_Skirt_shin01_translateX.input')
    pm.disconnectAttr('|pelvis.translateY', 'LL_Skirt_thigh01_translateZ.input')#LL_thigh01
    pm.connectAttr('Rot|pelvis.translateY', 'LL_Skirt_thigh01_translateZ.input')
    print('LL ok')
    
    pm.disconnectAttr('|pelvis|hips|R_thigh.rotateZ', 'FR_Skirt_shin01_translateX.input')#FR_shin01
    pm.connectAttr('Rot|pelvis|hips|R_thigh.rotateZ', 'FR_Skirt_shin01_translateX.input')
    pm.disconnectAttr('|pelvis|hips|R_thigh.rotateZ', 'FR_Skirt_thigh01_translateX.input')#FR_thigh01 tx
    pm.connectAttr('Rot|pelvis|hips|R_thigh.rotateZ', 'FR_Skirt_thigh01_translateX.input')
    pm.disconnectAttr('|pelvis|hips|R_thigh.rotateZ', 'FR_Skirt_thigh01_translateY.input')#FR_thigh01 tz
    pm.connectAttr('Rot|pelvis|hips|R_thigh.rotateZ', 'FR_Skirt_thigh01_translateY.input')
    print('FR ok')
    
    pm.disconnectAttr('|pelvis|hips|L_thigh.rotateZ', 'FL_Skirt_shin01_translateX.input')#FL_shin01
    pm.connectAttr('Rot|pelvis|hips|L_thigh.rotateZ', 'FL_Skirt_shin01_translateX.input')
    pm.disconnectAttr('|pelvis|hips|L_thigh.rotateZ', 'FL_Skirt_thigh01_translateX.input')#FL_thigh01 tx
    pm.connectAttr('Rot|pelvis|hips|L_thigh.rotateZ', 'FL_Skirt_thigh01_translateX.input')
    pm.disconnectAttr('|pelvis|hips|L_thigh.rotateZ', 'FL_Skirt_thigh01_translateY.input')#FL_thigh01 tz
    pm.connectAttr('Rot|pelvis|hips|L_thigh.rotateZ', 'FL_Skirt_thigh01_translateY.input')
    print('FL ok')
    



    #re-writing all expression connections
    
    #re-connecting pelvis rotateZ expressions for the front bone 
    
    for i in pm.listConnections('|pelvis.rotateZ', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        pm.connectAttr('Rot|pelvis.rotateZ', '%s.input' %i[1], force = True)
    
    #re-connecting L_thigh rotate X expressions for the front bone 
    
    for i in pm.listConnections('|pelvis|hips|L_thigh.rotateX', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        print('connecting L Thigh')
        pm.connectAttr('Rot|pelvis|hips|L_thigh.rotateX', '%s.input' %i[1], force = True)
    
    
    for i in pm.listConnections('|pelvis|hips|L_thigh.rotateZ', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        pm.connectAttr('Rot|pelvis|hips|L_thigh.rotateZ', '%s.input' %i[1], force = True)
    
    for i in pm.listConnections('|pelvis|hips|L_thigh.rotateY', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        pm.connectAttr('Rot|pelvis|hips|L_thigh.rotateY', '%s.input' %i[1], force = True)
        
    #right thigh
    for i in pm.listConnections('|pelvis|hips|R_thigh.rotateX', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        print('connecting R Thigh')
        pm.connectAttr('Rot|pelvis|hips|R_thigh.rotateX', '%s.input' %i[1], force = True)
    
    
    for i in pm.listConnections('|pelvis|hips|R_thigh.rotateZ', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        pm.connectAttr('Rot|pelvis|hips|R_thigh.rotateZ', '%s.input' %i[1], force = True)
    
    for i in pm.listConnections('|pelvis|hips|R_thigh.rotateY', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        pm.connectAttr('Rot|pelvis|hips|R_thigh.rotateY', '%s.input' %i[1], force = True)
    
    
    
    #L_Shin
    for i in pm.listConnections('|pelvis|hips|L_thigh|L_shin.rotateX', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        print('connecting L Shin')
        pm.connectAttr('Rot|pelvis|hips|L_thigh|L_shin.rotateX', '%s.input' %i[1], force = True)
    
    
    for i in pm.listConnections('|pelvis|hips|L_thigh|L_shin.rotateZ', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        pm.connectAttr('Rot|pelvis|hips|L_thigh|L_shin.rotateZ', '%s.input' %i[1], force = True)
    
    for i in pm.listConnections('|pelvis|hips|L_thigh|L_shin.rotateY', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        pm.connectAttr('Rot|pelvis|hips|L_thigh|L_shin.rotateY', '%s.input' %i[1], force = True)
    
    
    #R_Shin
    for i in pm.listConnections('|pelvis|hips|R_thigh|R_shin.rotateX', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        print('connecting R Shin')
        pm.connectAttr('Rot|pelvis|hips|R_thigh|R_shin.rotateX', '%s.input' %i[1], force = True)
    
    
    for i in pm.listConnections('|pelvis|hips|R_thigh|R_shin.rotateZ', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        pm.connectAttr('Rot|pelvis|hips|R_thigh|R_shin.rotateZ', '%s.input' %i[1], force = True)
    
    for i in pm.listConnections('|pelvis|hips|R_thigh|R_shin.rotateY', connections = True):
        if i[1].find('unit') == -1:
            print("don't connect")
            continue
        pm.connectAttr('Rot|pelvis|hips|R_thigh|R_shin.rotateY', '%s.input' %i[1], force = True)
    pm.delete('|pelvis')
    
    #installing skirts
    
    '''
    fileRead = open('K:/design/maya/data/tool/scData/Skirt_Install/skirt/skirts_all.weightMap', 'r')
    
    
    fileRead.seek(0)
    boneList = dict()
    fileRead.readline()
    fileRead.readline()
    for i in fileRead.readlines():
        x = i.split()
        if boneList.has_key(x[0]):
            boneList[x[0]].append(x[1])
        else:
            boneList[x[0]] = [x[1]]
    
    keys = boneList.keys()
    for i in keys:
        print i
    pm.select('ryuubi_skirt_test')
    for i in keys:
        pm.skinCluster(i, boneList[i], tsb = True)
    
        
    fileRead.close()
    '''
