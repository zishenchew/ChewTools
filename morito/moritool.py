# encoding: utf-8
##############################################################################################################################
#
#    法線コピー ペースト
#    Author: Chew
#    
#
#    A tool to copy and paste normal data via the polyNormalPerVertex command and exporting that data out
#    to a text file and pasting it somewhere else.
#
##############################################################################################################################

import pymel.core as pm
import maya.OpenMayaAnim as animAPI
import maya.mel as mel

pm.ls(sl = True)
175, 350 159 149 340
pm.select(ball.f[159])
pm.select(ball.f[350])
pm.polyInfo(pm.ls(sl = True).f[350], vf = True)
pm.polyNormalPerVertex(ball.vtxFace[175][159], q = True, xyz = True)
pm.polyNormalPerVertex(ball.vtxFace[175][350], xyz = pm.polyNormalPerVertex(ball.vtxFace[175][159], q = True, xyz = True))
pm.polyNormalPerVertex(ball.vtxFace[175][340], xyz = pm.polyNormalPerVertex(ball.vtxFace[175][159], q = True, xyz = True))



def moriToolUI(mayaFalse = False):
    windowID = 'moritool'#checking if window already exists
    if pm.window(windowID, exists = True):
        pm.deleteUI(windowID)
        pm.windowPref( 'moritool', remove=True )
    pm.window(windowID, title = u'Prism 森ツール')
    
    moriToolLayout = pm.columnLayout( 'moriToolLayout', width = 400)
    vertexFrame = pm.frameLayout(label = u'頂点関連', labelIndent = 5, marginHeight = 5, parent = moriToolLayout, nch = 5)
    vertexRow = pm.rowLayout( 'vertexRow', nc = 5, width = 600)
    pm.button( 'vertexJump', label = u'頂点移動', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = vertexRow, command = weaponGlobal)
    pm.button( 'vertexAverage', label = u'頂点中間', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = vertexRow, command = migi)
    normalFrame = pm.frameLayout(label = u'法線関連', labelIndent = 5, marginHeight = 5, parent = moriToolLayout, nch = 5)
    normalRow = pm.rowLayout( 'normalRow', nc = 5, width = 600)
    pm.button( 'normalCopy', label = u'法線コピー', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = normalRow, command = hidari)
    pm.button( 'normalAverage', label = u'法線平均', width = 150, height = 20, backgroundColor = ( 0.6, 0.6, 0.6), parent = normalRow, command = hidari)
    

    pm.showWindow()
    pm.window(windowID, edit = True, widthHeight = (500,250))
    
moriToolUI()
    
'''
def miscStuff():
    ball = pm.ls(sl = True)[0]
    for i in ball.vtx:
        print i
        print pm.polyNormalPerVertex(i, q = True, x = True)
        print pm.polyNormalPerVertex(i, q = True, y = True)
        print pm.polyNormalPerVertex(i, q = True, z = True)
    
    line = ''
    output = []
    #output.append(pm.ls(sl = True)[0])
    for i in ball.vtx:
        line = line + i +  '_' + str(pm.polyNormalPerVertex(i, q = True, x = True)) +  '_' + str(pm.polyNormalPerVertex(i, q = True, y = True)) +  '_' + str(pm.polyNormalPerVertex(i, q = True, z = True))
        #line = line.replace('[', '')
        #line = line.replace(']', '')
        #line = line.replace(',', '')
        #line
        output.append(line)
        line = ''
        
    #writing pose into data
    normalData = open(r'D:\ChewTools\morito\normal tool\data.nor', 'w')
    
    for i in output:
        normalData.write(i)
        normalData.write('\n')
    normalData.close()
    
    ######################################################################################################################################################
    
    
    normalData = open(r'D:\ChewTools\morito\normal tool\data.nor', 'r')
    dump = []
    for i in normalData:
        dump.append(i)
    normalData.close()
    
    #pm.polyNormalPerVertex(i.split[0], x = i.split[1], y = i.split[2], z = i.split[3])
    
    for i in dump:
        #print i
        #print i.split('_')[1].rstrip(']').lstrip('[').split(', ')
        x_list = [float(j) for j in i.split('_')[1].rstrip(']').lstrip('[').split(', ')] #converts a list in string form into a list of floats
        y_list = [float(j) for j in i.split('_')[2].rstrip(']').lstrip('[').split(', ')] #converts a list in string form into a list of floats
        #print i.split('_')[3].strip('\n').rstrip(']').lstrip('[').split(', ')
        z_list = [float(j) for j in i.split('_')[3].strip('\n').rstrip(']').lstrip('[').split(', ')] #converts a list in string form into a list of floats
    
        pm.polyNormalPerVertex(i.split('_')[0], x = x_list, y = y_list, z = z_list)
'''