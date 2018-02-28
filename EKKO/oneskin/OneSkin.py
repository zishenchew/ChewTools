import pymel.core as pm
import maya.mel as mel

def oneSkin(arg = 2):
    
    
    
    meshArg = pm.ls(sl = True)
    
    if len(meshArg) == 1:
        pm.confirmDialog(title = 'Error', message = 'Mesh is already one skin')
        return
    
    if arg == 0:#arg = 0 don't retain old data.

        weightGeo = pm.polyUniteSkinned(meshArg, ch = True, mergeUVSets = True) #[0] is the mesh, [1] is the skindata
        charaGeo = pm.duplicate(weightGeo[0], name = 'CharaGeo')
        newSkinClust = pm.skinCluster(charaGeo, pm.skinCluster(weightGeo[1], q = True, influence = True)) #skin object
        pm.select(weightGeo)
        pm.select(charaGeo, add = True)
        pm.copySkinWeights(noMirror = True, surfaceAssociation = 'closestComponent', influenceAssociation = 'oneToOne') #copying skin weights
        pm.delete(meshArg, weightGeo)
        pm.parent(charaGeo, world = True)
        print('EKKO oneSkin successful!')
        
        return charaGeo


    elif arg == 1: #retain data
        
        meshDupe = pm.duplicate(meshArg, rr = True)
        skinDictionary = {}
        counter = 0
        for i in meshArg:
            skinDictionary[i] = meshDupe[counter]
            counter += 1
        for i in meshArg:
            pm.skinCluster(skinDictionary[i], pm.skinCluster(i, q = True, influence = True))
            #copy skin first
        for i in meshArg:
            pm.select(i)
            pm.select(skinDictionary[i], add = True)
            pm.copySkinWeights(noMirror = True, surfaceAssociation = 'closestComponent', influenceAssociation = 'closestJoint') #copying skin weights
        
        charaGeo = pm.polyUniteSkinned(meshDupe, ch = False) #charaGeo[0] is the mesh/transform, [1] is the skin node
        pm.parent(charaGeo[0], world = True)
        renamedGeo = pm.rename(charaGeo[0], 'CharaGeo')
        pm.delete(meshDupe) #deleting garbage data
        print('EKKO oneSkin successful!')
        
        return renamedGeo

    elif arg == 2: #original method, if mesh is unclean and keeps crashing
        meshList = pm.duplicate(meshArg, rr = True)
        charaGeo = pm.polyUnite(meshList, ch = False, name = 'CharaGeo')[0]
        pm.delete(meshList) #deleting leftover garbage transform nodes
        pm.parent(charaGeo, world = True)
        
        newSkinClust = pm.skinCluster(charaGeo, pm.ls(type = 'joint'))     #skinning begins
        
        pm.select(meshArg)
        pm.select(charaGeo, add = True)
        pm.copySkinWeights(noMirror = True, surfaceAssociation = 'closestPoint', influenceAssociation = 'closestJoint') #copying skin weights
        pm.selectMode(o = True)
        pm.select(deselect = True)
        pm.select(charaGeo)
        print('EKKO oneSkin successful!')
        
    return charaGeo
        
    print('EKKO oneSkin successful!')

def shadowMesh(arg = 2, triCount = 10000):
    #please ask kaneko-san to select all the mesh to be exported again
    shadowGeo = oneSkin(arg)
    print('EKKO shadowMesh in progress! Performing poly reduction now!')
    #shadowmesh starts here
    pm.selectMode(o = True)
    pm.select(shadowGeo)
    mel.eval('polyCleanupArgList 3 { "0","1","1","0","0","0","0","0","0","1e-005","0","1e-005","0","1e-005","0","1","0" };') #clean up before reduction
    pm.selectMode(o = True)
    #reduce polycount to fall under budget
    pm.polyReduce(shadowGeo, ver = 1, trm = 2, triangleCount = triCount, sharpness = 0, keepBorder = 1, keepColorBorder = 1, keepFaceGroupBorder = 1, keepHardEdge = 1, keepCreaseEdge = 1, keepBorderWeight = 0.5, keepMapBorderWeight = 0, keepColorBorderWeight = 0, keepFaceGroupBorderWeight = 0, keepHardEdgeWeight = 0.25, keepCreaseEdgeWeight = 0, useVirtualSymmetry = 0, symmetryTolerance = 0.01, sx = 0, sy = 1, sz = 0, sw = 0, preserveTopology = 1, keepQuadsWeight = 1, vertexMapName = "", replaceOriginal = 1, cachingReduce = 1, constructionHistory = 1)
    pm.select(deselect = True)
    pm.bakePartialHistory(shadowGeo, prePostDeformers = True, preDeformers = True)
    renamedGeo = pm.rename(shadowGeo, 'ShadowGeo')
    pm.select(renamedGeo)
    print('EKKO shadowMesh successful!\nShadow Mesh specs:')
    print(pm.polyEvaluate(shadowGeo, fmt = True))