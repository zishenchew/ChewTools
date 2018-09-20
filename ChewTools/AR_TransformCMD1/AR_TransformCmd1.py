"""
-------------------------------------------------------------------------------
Creation Info:
Authors: Adam Mechtley http://adammechtley.com
    Ryan Trowbridge http://www.rtrowbridge.com/blog/
Date: 2011.04.23
Version: 1.0
Requires: Maya 8.5 or newer

Release Notes:
1.0 - 2011.04.23 - Initial release

Description:
This command allows a user to query transform information for a node in the
DAG. It is intended to demonstrate the use of custom syntax and some useful
transform operations.

Supported Modes:
-N/A

Usage:
Add this file to your plug-in path and load it in Maya from the Plug-in
Manager (Window -> Settings/Preferences -> Plug-in Manager). You can then
execute the command ar_transform.
-------------------------------------------------------------------------------
"""

import math
import maya.OpenMaya as om
import maya.OpenMayaMPx as ommpx

## a dictionary of possible rotation order values
kRotateOrderMapping = {
    'xyz': om.MEulerRotation.kXYZ,
    'yzx': om.MEulerRotation.kYZX,
    'zxy': om.MEulerRotation.kZXY,
    'xzy': om.MEulerRotation.kXZY,
    'yxz': om.MEulerRotation.kYXZ,
    'zyx': om.MEulerRotation.kZYX,
    '0': om.MEulerRotation.kXYZ,
    '1': om.MEulerRotation.kYZX,
    '2': om.MEulerRotation.kZXY,
    '3': om.MEulerRotation.kXZY,
    '4': om.MEulerRotation.kYXZ,
    '5': om.MEulerRotation.kZYX
}


class AR_TransformCmd(ommpx.MPxCommand):
    """
    A command to query transform information for a transform node.
    """

    ## the name of the command
    kPluginCmdName = 'ar_transform'

    ## specifies that world space should be used; otherwise local space is used
    kWorldSpaceFlag = '-ws'
    kWorldSpaceLongFlag = '-worldSpace'
    ## requests translation information
    kTranslationFlag = '-t'
    kTranslationLongFlag = '-translation'
    ## requests Euler rotation information
    kRotationFlag = '-r'
    kRotationLongFlag = '-rotation'
    ## specifies Euler rotation order when Euler rotation information is requested
    kRotateOrderFlag = '-ro'
    kRotateOrderLongFlag = '-rotateOrder'
    ## requests quaternion rotation information
    kQuaternionFlag = '-rq'
    kQuaternionLongFlag = '-rotationQuaternion'

    def __init__(self):
        """
        Initialize data attributes for storing arguments
        """
        ommpx.MPxCommand.__init__(self)
        # NOTE: object must be MDagPath and not MObject, or using world space will fail
        self.__transformPath = om.MDagPath()  # the selected object
        self.__transformFn = om.MFnTransform()  # the selected object's transform function set
        self.__space = om.MSpace.kTransform  # the coordinate space in which values should be computed
        # NOTE: MEulerRotation.RotationOrder and MTransformationMatrix.RotationOrder are enumerated differently!
        self.__rotateOrder = om.MEulerRotation.kXYZ  # the Euler rotation order
        self.__translationArg = False
        self.__rotationArg = False
        self.__quaternionArg = False

    def doIt(self, args):
        """
        Parse arguments and then call doItQuery()
        """
        # parse the arguments
        try:
            argData = om.MArgDatabase(self.syntax(), args)  # if this fails, it will raise its own exception...
        except:
            pass  # ...so we can just pass here
        else:
            # validate the provided selection list
            sList = om.MSelectionList()
            argData.getObjects(sList)
            iter = om.MItSelectionList(sList, om.MFn.kTransform)
            if iter.isDone() or not iter.itemType() == om.MItSelectionList.kDagSelectionItem:
                selectionStrings = []
                sList.getSelectionStrings(selectionStrings)
                raise Exception('%s is not a valid transform node.\n' % selectionStrings[0])
            iter.getDagPath(self.__transformPath)
            self.__transformFn.setObject(self.__transformPath)

            # establish the parameters for computation
            if argData.isFlagSet(AR_TransformCmd.kWorldSpaceFlag):
                self.__space = om.MSpace.kWorld
            # use the transform node's rotate order as the default value
            rotation = om.MEulerRotation()
            self.__transformFn.getRotation(rotation)
            self.__rotateOrder = rotation.order
            if argData.isFlagSet(AR_TransformCmd.kRotateOrderFlag):
                rotateOrderStr = argData.flagArgumentString(AR_TransformCmd.kRotateOrderFlag, 0)
                try:
                    self.__rotateOrder = kRotateOrderMapping[rotateOrderStr.lower()]
                except:
                    self.displayWarning(
                        '%s is not a valid rotate order. Rotate order of %s is being used instead.' %
                        (rotateOrderStr, self.__transformPath.partialPathName())
                    )

            # determine which flags are set and perform the query
            self.__translationArg = argData.isFlagSet(AR_TransformCmd.kTranslationFlag)
            self.__rotationArg = argData.isFlagSet(AR_TransformCmd.kRotationFlag)
            self.__quaternionArg = argData.isFlagSet(AR_TransformCmd.kQuaternionFlag)
            self.doItQuery()

    def doItQuery(self):
        """
        Return requested value.
        """
        # query mode typically only supports one argument at a time
        # this principle ensures that the result will be printed in a way that can be stored in a variable
        doubleArray = om.MScriptUtil()
        if not (self.__translationArg ^ self.__rotationArg ^ self.__quaternionArg):
            raise Exception('Query mode only supports one property at a time.')
        elif self.__translationArg:
            translation = self.__transformFn.getTranslation(self.__space)
            doubleArray.createFromDouble(
                translation.x,
                translation.y,
                translation.z
            )
            self.setResult(om.MDoubleArray(doubleArray.asDoublePtr(), 3))
        elif self.__rotationArg:
            euler = om.MEulerRotation()
            self.__transformFn.getRotation(euler)
            if not (euler.order == self.__rotateOrder) or self.__space == om.MSpace.kWorld:
                rotation = om.MQuaternion()
                # NOTE: Must use a quaternion because no prototypes of Euler angles accept an MSpace argument
                self.__transformFn.getRotation(rotation, self.__space)
                euler = rotation.asEulerRotation()
                # BUG: Must use MEulerRotation.reoderIt(), as MTransformationMatrix.reorderRotation() is broken in Python
                # NOTE: MFnTransform.setRotationOrder() would affect the object in the scene
                euler.reorderIt(self.__rotateOrder)
            doubleArray.createFromDouble(
                math.degrees(euler.x),
                math.degrees(euler.y),
                math.degrees(euler.z)
            )
            self.setResult(om.MDoubleArray(doubleArray.asDoublePtr(), 3))
        elif self.__quaternionArg:
            rotation = om.MQuaternion()
            self.__transformFn.getRotation(rotation, self.__space)
            doubleArray.createFromDouble(
                rotation.x,
                rotation.y,
                rotation.z,
                rotation.w
            )
            self.setResult(om.MDoubleArray(doubleArray.asDoublePtr(), 4))

    @classmethod
    def cmdCreator(cls):
        """
        Return pointer to proxy object.
        """
        return ommpx.asMPxPtr(cls())

    @classmethod
    def syntaxCreator(cls):
        """
        Specify custom syntax
        """
        syntax = om.MSyntax()
        syntax.addFlag(cls.kWorldSpaceFlag, cls.kWorldSpaceLongFlag, om.MSyntax.kNoArg)
        syntax.addFlag(cls.kTranslationFlag, cls.kTranslationLongFlag, om.MSyntax.kNoArg)
        syntax.addFlag(cls.kRotationFlag, cls.kRotationLongFlag, om.MSyntax.kNoArg)
        syntax.addFlag(cls.kRotateOrderFlag, cls.kRotateOrderLongFlag, om.MSyntax.kString)
        syntax.addFlag(cls.kQuaternionFlag, cls.kQuaternionLongFlag, om.MSyntax.kNoArg)
        syntax.useSelectionAsDefault(
            True)  # if a selection list argument is not specified when the command is entered, then use the current selection
        syntax.setObjectType(om.MSyntax.kSelectionList, 1,
                             1)  # this specifies we want the objects as an MSelectionList that may contain only 1 item
        return syntax


def initializePlugin(obj):
    """
    Initialize the plug-in
    """
    plugin = ommpx.MFnPlugin(
        obj,
        'Adam Mechtley & Ryan Trowbridge',
        '1.0',
        'Any'
    )
    try:
        plugin.registerCommand(
            AR_TransformCmd.kPluginCmdName,
            AR_TransformCmd.cmdCreator,
            AR_TransformCmd.syntaxCreator
        )
    except:
        raise Exception(
            'Failed to register command: %s' %
            AR_TransformCmd.kPluginCmdName
        )


def uninitializePlugin(obj):
    """
    Uninitialize the plug-in
    """
    plugin = ommpx.MFnPlugin(obj)
    try:
        plugin.deregisterCommand(AR_TransformCmd.kPluginCmdName)
    except:
        raise Exception(
            'Failed to unregister command: %s' %
            AR_TransformCmd.kPluginCmdName
        )