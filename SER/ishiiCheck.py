# encoding: utf-8
import datetime
import pymel.core as pm
import maya.cmds as cmds
import os
import maya.OpenMayaAnim as animAPI


def ishiiCheckFunc():
    
    fileIndex = open('//p.sv/Prism/project/SER/user/chew/ref/ishiiCheck_index.ref', 'rb')
    indexDump = fileIndex.read().decode("UTF-8")
    charaNameIndex = {}
    for i in indexDump.split('\n'):#assigning character names to index
        charaNameIndex[i[:3]] = i.split('_')[1].rstrip('\r')
    fileIndex.close()
    
    todaydate = datetime.datetime.now().strftime("%y%m%d")
    fileName = cmds.file(q = True, sceneName = True, shortName = True).rstrip('.mb').rstrip('.ma')
    saveName = fileName[1:3] + '_' + charaNameIndex[fileName[:3]]
    
    savePath = r"\\p.sv\Prism\project\SER\check\motion\%s\%s" %(todaydate, saveName)
    
    if not os.path.exists(savePath):
        print (u'パスは存在していないので、作ります')
        os.makedirs(savePath)
    
    if 'Idle' in fileName:
        print fileName[:11]
        pm.playblast(format = 'qt', filename = r"\\p.sv\Prism\project\SER\check\motion\%s\%s\%s.mov" %(todaydate, saveName, fileName[:11]), forceOverwrite = True, clearCache = True, viewer = False, showOrnaments = True, fp = 4, percent = 100, compression = "H.264", quality = 100, startTime = animAPI.MAnimControl.minTime().value(), endTime = animAPI.MAnimControl.maxTime().value())
        cmds.file(r"\\p.sv\Prism\project\SER\check\motion\%s\%s\%s" %(todaydate, saveName, fileName[:11]), force = True, options = 'v=0;', type = 'FBX export', pr = True, ea = True)
    elif 'Attack' in fileName:
        print fileName[:13]
        pm.playblast(format = 'qt', filename = r"\\p.sv\Prism\project\SER\check\motion\%s\%s\%s.mov" %(todaydate, saveName, fileName[:13]), forceOverwrite = True, clearCache = True, viewer = False, showOrnaments = True, fp = 4, percent = 100, compression = "H.264", quality = 100, startTime = animAPI.MAnimControl.minTime().value(), endTime = animAPI.MAnimControl.maxTime().value())
        cmds.file(r"\\p.sv\Prism\project\SER\check\motion\%s\%s\%s" %(todaydate, saveName, fileName[:13]), force = True, options = 'v=0;', type = 'FBX export', pr = True, ea = True)