# encoding: utf-8
'''
###########################################################################################################
プリズムプラス  リグイングツール  PrismPlus Rigger Tool

担当者：チュー

Simple rigging tool for company to use on future projects because HumanIK is a ridiculous choice for 
non-motion capture projects.
This will buy time for me to see if I can implement mGear for Prism+


There will be multiple components to this tool.
1 will be to create a tool that will create locators for the rigger to move to the appropriate place.
2nd will be a tool to spawn joints and connect all of the joints into a proper hierarchy and apply IKs and
whatever to them./

A 3rd tool to copy weights and and preserve them while the rigger adjusts the pivots or joint positions.

Ideally, a 4th tool to oneMesh all the mesh to make it lighter for export as well as easier for the copy 
weights tool to copy and preserve the weights.

For now, just write the 1st and 2nd tool.

###########################################################################################################
'''

from maya import OpenMayaUI as omui 
import pymel.core as pm
import maya.cmds as cmds
import maya.mel as mel
import os
import sys
#sys.path.append('//p.sv/Prism/project/SER/user/chew/SERTools')#adding new directory for tools to import


