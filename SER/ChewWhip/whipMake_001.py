# encoding: utf-8
import maya.cmds as cmds
import maya.mel as mel
import pymel.core as pm



def whipMake():
    

    #set names of bones as variables for easy edit later
    whipName = 'Joint_Weapon'
    startJ = 'Joint_Weapon2'
    endJ = 'Joint_Weapon18'
    
    numOfContr = 8
    
    #check of bones exist
    if pm.objExists(whipName):
        
        ik_return = pm.ikHandle(name = 'whip_IK', startJoint = startJ, endEffector = endJ, solver = 'ikSplineSolver', ns = 4) #[0] is the ikHandle itself, [1] is the effector and [2] is the spline curve that is created
        pm.rebuildCurve(ik_return[2], constructionHistory = True, rpo = True, rt = 0, end =1, kr = 0, kep = True, kt = 0, spans = numOfContr, degree = 3, tolerance = 0.01) #rebuilding curve to desired parameters
        
        masterContr = pm.circle(name = 'whipContr_Master', radius = 12.5)#master controller
        pm.addAttr(masterContr, longName = 'IK', attributeType = 'bool', defaultValue = 0)
        
        curveCVs = pm.ls(ik_return[2] + '.cv[0:]', fl = True)
        whipGroup = pm.group(name = 'whipGroup')
        rad = 14
        for i, cv in enumerate(curveCVs): #building clusters on each curve
            #print i, cv
            clust = pm.cluster(cv, name = 'whipCluster' + str(i))
            circ = pm.circle(name = 'whipContr_' + str(i), radius = rad)
            pm.xform(circ, translation = pm.xform(curveCVs[i], query = True, translation = True, ws = True), rotation = [0, 0, 0], ws = True) #moving the circle to where the cluster is
            pm.makeIdentity(circ, apply = True, t = 1, r = 1, s = 1, n = 0)
            pm.parentConstraint(circ, clust, mo = True)
            pm.parent(circ[0], clust[1], whipGroup)
            rad -= 1

        
    else:
        pm.confirmDialog(title = '鞭リッグツール', message = 'シーンに鞭が見つけていません', button = ['OK'])
        
