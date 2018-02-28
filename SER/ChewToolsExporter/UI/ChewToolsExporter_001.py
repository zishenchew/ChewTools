# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'E:/ChewTools/SER/ChewToolsExporter/UI/ChewToolsExporter_001.ui'
#
# Created: Wed Jan 31 18:19:49 2018
#      by: pyside2-uic  running on PySide2 2.0.0~alpha0
#
# WARNING! All changes made in this file will be lost!

from PySide2 import QtCore, QtGui, QtWidgets

class Ui_ExporterWindow(object):
    def setupUi(self, ExporterWindow):
        ExporterWindow.setObjectName("ExporterWindow")
        ExporterWindow.resize(500, 181)
        self.ExporterTab = QtWidgets.QTabWidget(ExporterWindow)
        self.ExporterTab.setGeometry(QtCore.QRect(0, 0, 500, 181))
        self.ExporterTab.setObjectName("ExporterTab")
        self.MotionTab = QtWidgets.QWidget()
        self.MotionTab.setObjectName("MotionTab")
        self.nameInput = QtWidgets.QPlainTextEdit(self.MotionTab)
        self.nameInput.setGeometry(QtCore.QRect(90, 50, 380, 20))
        font = QtGui.QFont()
        font.setPointSize(9)
        self.nameInput.setFont(font)
        self.nameInput.setPlainText("")
        self.nameInput.setObjectName("nameInput")
        self.nameBox = QtWidgets.QLabel(self.MotionTab)
        self.nameBox.setGeometry(QtCore.QRect(40, 50, 40, 20))
        self.nameBox.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)
        self.nameBox.setObjectName("nameBox")
        self.exportBox = QtWidgets.QLabel(self.MotionTab)
        self.exportBox.setGeometry(QtCore.QRect(30, 20, 50, 20))
        self.exportBox.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)
        self.exportBox.setObjectName("exportBox")
        self.exportPathInput = QtWidgets.QPlainTextEdit(self.MotionTab)
        self.exportPathInput.setGeometry(QtCore.QRect(90, 20, 380, 20))
        font = QtGui.QFont()
        font.setPointSize(9)
        self.exportPathInput.setFont(font)
        self.exportPathInput.setObjectName("exportPathInput")
        self.exportButton = QtWidgets.QPushButton(self.MotionTab)
        self.exportButton.setGeometry(QtCore.QRect(90, 110, 380, 20))
        self.exportButton.setObjectName("exportButton")
        self.ExporterTab.addTab(self.MotionTab, "")
        self.ModelTab = QtWidgets.QWidget()
        self.ModelTab.setObjectName("ModelTab")
        self.ExporterTab.addTab(self.ModelTab, "")

        self.retranslateUi(ExporterWindow)
        self.ExporterTab.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(ExporterWindow)

    def retranslateUi(self, ExporterWindow):
        ExporterWindow.setWindowTitle(QtWidgets.QApplication.translate("ExporterWindow", "ChewToolsExporter", None, -1))
        self.nameBox.setText(QtWidgets.QApplication.translate("ExporterWindow", "名前：", None, -1))
        self.exportBox.setText(QtWidgets.QApplication.translate("ExporterWindow", "出力パス", None, -1))
        self.exportButton.setText(QtWidgets.QApplication.translate("ExporterWindow", "出力", None, -1))
        self.ExporterTab.setTabText(self.ExporterTab.indexOf(self.MotionTab), QtWidgets.QApplication.translate("ExporterWindow", "モーション出力", None, -1))
        self.ExporterTab.setTabText(self.ExporterTab.indexOf(self.ModelTab), QtWidgets.QApplication.translate("ExporterWindow", "モデル出力", None, -1))


    def exportFile():
        