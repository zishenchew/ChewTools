#animation layer script
import maya.cmds as cmds
cmds.select(cmds.listRelatives('pelvis'))
for i in cmds.ls(sl = True):
    if i == 'hips' or i == 'waist':
        cmds.select(i, deselect = True)
cmds.select(cmds.listRelatives(cmds.ls(sl = True), allDescendents = True), add = True)
cmds.animLayer('Skirt_Animation', addSelectedObjects = True)
