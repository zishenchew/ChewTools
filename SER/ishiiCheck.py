# encoding: utf-8
import datetime
import pymel.core as pm
import maya.mel as mel
import os
import maya.OpenMayaAnim as animAPI


def ishiiCheckFunc(*mayaFalse):
    
    fileIndex = open('//p.sv/Prism/project/SER/user/chew/ref/ishiiCheck_index.ref', 'rb')
    indexDump = fileIndex.read().decode("UTF-8")
    charaNameIndex = {}
    for i in indexDump.split('\n'):#assigning character names to index
        charaNameIndex[i[:3]] = i.split('_')[1].rstrip('\r')
    fileIndex.close()
    
    todaydate = datetime.datetime.now().strftime("%y%m%d")
    fileName = pm.sceneName().split('/')[-1].rstrip('.ma')#cmds.file(q = True, sceneName = True, shortName = True).rstrip('.mb').rstrip('.ma')
    saveName = fileName[1:3] + '_' + charaNameIndex[fileName[:3]]
    
    savePath = u"//p.sv/Prism/project/SER/check/motion/%s/インゲーム/%s" %(todaydate, saveName)
    specialSavePath = u"//p.sv/Prism/project/SER/check/motion/%s/必殺技/" %(todaydate)
    

    if 'Idle' in fileName:
        if not os.path.exists(savePath):
            print (u'パスは存在していないので、作ります')
            os.makedirs(savePath)
        print fileName[:11]
        pm.playblast(format = 'qt', filename = u"//p.sv/Prism/project/SER/check/motion/%s/インゲーム/%s/%s.mov" %(todaydate, saveName, fileName[:11]), forceOverwrite = True, clearCache = True, viewer = False, showOrnaments = True, fp = 4, percent = 100, compression = "H.264", quality = 50, startTime = animAPI.MAnimControl.minTime().value(), endTime = animAPI.MAnimControl.maxTime().value(), widthHeight=[960, 540])
        #cmds.file(r"//p.sv/Prism/project/SER/check/motion/%s/%s/%s" %(todaydate, saveName, fileName[:11]), force = True, options = 'v=0;', type = 'FBX export', pr = True, ea = True)
        mel.eval(u'FBXExportBakeComplexAnimation -v 1;FBXExportBakeComplexAnimation -q; FBXExportEmbeddedTextures -v true; FBXExportEmbeddedTextures -q;')
        mel.eval(u'FBXExport -f "//p.sv/Prism/project/SER/check/motion/%s/インゲーム/%s/%s";' %(todaydate, saveName, fileName[:11]))
    elif 'Attack' in fileName:
        if not os.path.exists(savePath):
            print (u'パスは存在していないので、作ります')
            os.makedirs(savePath)
        print fileName[:13]
        pm.playblast(format = 'qt', filename = u"//p.sv/Prism/project/SER/check/motion/%s/インゲーム/%s/%s.mov" %(todaydate, saveName, fileName[:13]), forceOverwrite = True, clearCache = True, viewer = False, showOrnaments = True, fp = 4, percent = 100, compression = "H.264", quality = 50, startTime = animAPI.MAnimControl.minTime().value(), endTime = animAPI.MAnimControl.maxTime().value(), widthHeight=[960, 540])
        #cmds.file(r"//p.sv/Prism/project/SER/check/motion/%s/%s/%s" %(todaydate, saveName, fileName[:13]), force = True, options = 'v=0;', type = 'FBX export', pr = True, ea = True)
        mel.eval(u'FBXExportBakeComplexAnimation -v 1;FBXExportBakeComplexAnimation -q; FBXExportEmbeddedTextures -v true; FBXExportEmbeddedTextures -q;')
        mel.eval(u'FBXExport -f "//p.sv/Prism/project/SER/check/motion/%s/インゲーム/%s/%s";' %(todaydate, saveName, fileName[:13]))
    elif 'Special' in fileName:
        print fileName[:16]
        pm.playblast(format='qt', filename=u"//p.sv/Prism/project/SER/check/motion/%s/必殺技/%s_%s.mov" % (
        todaydate, fileName[:16], todaydate[2:]), forceOverwrite=True, clearCache=True, viewer=False, showOrnaments=True,
                     fp=4, percent=100, compression="H.264", quality=50,
                     startTime=animAPI.MAnimControl.minTime().value(), endTime=animAPI.MAnimControl.maxTime().value(),
                     widthHeight=[960, 540])