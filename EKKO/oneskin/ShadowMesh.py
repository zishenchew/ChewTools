import pymel.core as pm
import maya.mel as mel

def shadowMesh(triCount = 10000):
    meshArg = pm.ls(sl = True)
    meshList = pm.duplicate(meshArg, rr = True)
    shadowGeo = pm.polyUnite(meshList, ch = False, name = 'ShadowGeo')[0]
    pm.delete(meshList) #deleting leftover garbage transform nodes
    pm.parent(shadowGeo, 'CharaA')
    
    newSkinClust = pm.skinCluster(shadowGeo, pm.listRelatives('CharaA', ad = True, type = 'joint'))     #skinning begins
    
    pm.select(meshArg)
    pm.select(shadowGeo, add = True)
    pm.copySkinWeights(noMirror = True, surfaceAssociation = 'closestPoint', influenceAssociation = 'closestJoint') #copying skin weights
    pm.selectMode(o = True)
    #shadowmesh starts here
    pm.select(shadowGeo)
    mel.eval('polyCleanupArgList 3 { "0","1","1","0","0","0","0","0","0","1e-005","0","1e-005","0","1e-005","0","1","0" };') #clean up before reduction
    pm.selectMode(o = True)
    #reduce polycount to fall under budget
    pm.polyReduce(shadowGeo, ver = 1, trm = 2, triangleCount = triCount, sharpness = 0, keepBorder = 1, keepColorBorder = 1, keepFaceGroupBorder = 1, keepHardEdge = 1, keepCreaseEdge = 1, keepBorderWeight = 0.5, keepMapBorderWeight = 0, keepColorBorderWeight = 0, keepFaceGroupBorderWeight = 0, keepHardEdgeWeight = 0.25, keepCreaseEdgeWeight = 0, useVirtualSymmetry = 0, symmetryTolerance = 0.01, sx = 0, sy = 1, sz = 0, sw = 0, preserveTopology = 1, keepQuadsWeight = 1, vertexMapName = "", replaceOriginal = 1, cachingReduce = 1, constructionHistory = 1)
    pm.select(deselect = True)
    pm.bakePartialHistory(shadowGeo, prePostDeformers = True, preDeformers = True)
    pm.select(shadowGeo)
    print('EKKO shadowMesh successful!\nShadow Mesh specs:')
    print(pm.polyEvaluate(shadowGeo, fmt = True))