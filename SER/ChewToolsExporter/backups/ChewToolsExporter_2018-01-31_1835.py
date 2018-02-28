# encoding: utf-16
'''
________________________________________________________________
チューツールス SER Export

Author: Chew Zishen
Written on: 2018 / 02 / 01

SER の出力自動化ツール。

SER exporter is to automate the tedious export process and create fullproof mistake-less export system


________________________________________________________________
'''
import pymel.core as pm
import maya.mel as mel

#def ChewToolsExporter():
currentAddress = pm.file


#import from reference

#bake
#use hikBakeToSkeleton


delete unnecessary things

save as separate file

load back original file

pm.mel.hikBakeCharacter(0)