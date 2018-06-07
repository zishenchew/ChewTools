# encoding: utf-8
##############################################################################################################################
#
#    Paint Weight transfer tool
#    Author: Chew
#
#
#    paint weight transfer tools
#
#
##############################################################################################################################
import pymel.core as pm
from functools import partial

def weightwrite():
    #first version, using nested dictionaries
    vertDict = {}
    for i in pm.ls('Skin_Body')[0].vtx:
        counter = 0
        weightDict = {}
        for j in pm.skinCluster('skinCluster5', q = True, influence = True):
            weightDict[j] = pm.skinPercent('skinCluster5', i, q = True, value = True)[counter]
            counter += 1
        dictDelete = []
        for k in weightDict:
            if weightDict[k] == 0:
                dictDelete.append(k)
        for h in dictDelete:
            del weightDict[h]
        vertDict[i] = weightDict
    del h, i, j, k #garbage collection


    weightExp = open('D:/ChewTools/AdvSke Tools/weightTransfer/test.weight', mode = 'w')
    for i in vertDict:
        weightExp.write(i + '|' + str(vertDict[i]) + '\n')
    weightExp.close()

def weightread():
    weightImp = open('D:/ChewTools/AdvSke Tools/weightTransfer/test.weight', mode = 'r')
    weightData = []
    for i in weightImp:
        weightData.append(i)
    weightImp.close()

    #weightData[-2].split('|')[1].strip('{').strip('}\n') list of joints and weights
    #weightData[-2].split('|')[1].strip('{').strip('}\n').split(', ')[0].split(': ') joint and weight data

def boneregister(butNumber, mayaFalse):
    pm.textField(butNumber, edit = True, text = str(pm.ls(sl = True)[0]))

def leftrightdetection(mayaFalse):
    lis = [] #checking which slots are empty
    for i in pm.lsUI(type='textField'):
        if i.find('colleft') != -1:
            lis.append(i)

    for i in sorted(pm.lsUI(type='textField')):
        if i.find('colleft') != -1 and pm.textField(i, q=True, text=True):
            #print pm.textField(i, q=True, text=True)
            #print i.replace('left', 'right')

            for j in sorted(lis):
                if not pm.textField(j, q=True, text=True):
                    pm.textField(j, edit=True, text=pm.textField(i, q=True, text=True).replace('Left', 'Right'))
                    pm.textField(j.replace('left', 'right'), edit=True, text=pm.textField(i.replace('left', 'right'), q=True, text=True).replace('Left', 'Right'))
                    break
def weighttransf_UI():
    # UI dimension
    winWidth = 200
    winHeight = 600

    # checking for duplicate windows
    windowID = 'weightTransf'
    if pm.window(windowID, exists=True):
        pm.deleteUI(windowID)
    # re-adjusting UI if UI is not correct
    try:
        if pm.windowPref(windowID, q=True, height=True) != winHeight or pm.windowPref(windowID, q=True,
                                                                                      width=True) != winWidth:
            pm.windowPref(windowID, remove=True)
    except:
        pass
    #PrismTools UI dimension
    winWidth = 420
    winHeight = 800

    # checking for duplicate windows
    windowID = 'WeightTransf'
    if pm.window(windowID, exists=True):
        pm.deleteUI(windowID)
    # re-adjusting UI if UI is not correct
    try:
        if pm.windowPref(windowID, q=True, height=True) != winHeight or pm.windowPref(windowID, q=True,
                                                                                              width=True) != winWidth:
            pm.windowPref(windowID, remove=True)
    except:
        pass

    pm.window(windowID, title=u'Prism Exporter | Ver 2018 / 06 / 06', widthHeight=(winWidth, winHeight))

    masterCol = pm.columnLayout('masterCol', nch = 5)
    masterScroll = pm.scrollLayout('masterScroll', nch = 5, horizontalScrollBarThickness = 0, width = winWidth, height = winHeight)
    pm.button('testBut', command=leftrightdetection, parent=masterScroll, width=50, height=20)
    row1 = pm.rowLayout('rowLayout1', nc = 6, width = 400, parent = masterScroll)
    col1 = pm.columnLayout('colleft', nch = 70, width = 130, parent = row1)
    col12 = pm.columnLayout('colleft2', nch=70, width=20, parent=row1)
    col2 = pm.columnLayout('colmid', nch = 70, width = 50, parent = row1)
    col3 = pm.columnLayout('colright', nch = 70, width = 130, parent = row1)
    col32 = pm.columnLayout('colright2', nch=70, width= 20, parent=row1)

    for i in range(70):
        pm.textField('left' + str(i), parent = col1, width = 130, placeholderText = i)
        pm.button('left button' + str(i), parent = col12, width = 20, label = '', height = 20, command = partial(boneregister, 'left' + str(i)))
        pm.text(i, parent=col2, width=50, label='=>', height=20)
        #pm.textField(i, parent = col2, width = 50, placeholderText = '=>', editable = False)
        pm.textField('right' + str(i), parent = col3, width = 130, placeholderText = i)
        pm.button('right button' + str(i), parent=col32, width=20, label='', height=20, command = partial(boneregister, 'right' + str(i)))


    pm.showWindow()

weighttransf_UI()