import pymel.core as pm
pm.addAttr(pm.ls(sl = True), longName = 'test2', dataType = 'string')
pm.setAttr('L_sleeve_mesh.test2', writeList)

pm.setAttr('L_sleeve_mesh.test2', lock = True)

writeList = ""


boneList = pm.skinCluster(pm.ls(sl = True), query = True, influence = True)
writeList = writeList + str(boneList) + "\n"
pm.skinPercent('skinCluster111', 'L_sleeve_mesh.vtx[0]', transform = 'L_elbow_export', query = True, value = True)
pm.skinPercent('skinCluster111', 'L_sleeve_mesh.vtx[1]', query = True, value = True)

pm.ls(sl = True)



vertCount = pm.polyEvaluate(pm.ls(sl = True), vertex = True)
counter = 0
while counter <= vertCount:
    writeList = writeList + str(pm.skinPercent('skinCluster111', 'L_sleeve_mesh.vtx[%s]' %str(counter), query = True, value = True)) + "\n"
    print(pm.skinPercent('skinCluster111', 'L_sleeve_mesh.vtx[%s]' %str(counter), query = True, value = True))
    counter += 1

