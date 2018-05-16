# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'D:/ChewTools/SER/ExporterUI_002.ui'
#
# Created: Wed May 16 13:43:29 2018
#      by: pyside2-uic  running on PySide2 2.0.0~alpha0
#
# WARNING! All changes made in this file will be lost!

from PySide2 import QtCore, QtGui, QtWidgets

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(750, 360)
        self.ExporterTab = QtWidgets.QTabWidget(MainWindow)
        self.ExporterTab.setGeometry(QtCore.QRect(0, 0, 751, 351))
        self.ExporterTab.setObjectName("ExporterTab")
        self.MotionTab = QtWidgets.QWidget()
        self.MotionTab.setObjectName("MotionTab")
        self.motionNameDisplay = QtWidgets.QLabel(self.MotionTab)
        self.motionNameDisplay.setGeometry(QtCore.QRect(10, 110, 71, 20))
        self.motionNameDisplay.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)
        self.motionNameDisplay.setObjectName("motionNameDisplay")
        self.exportBox = QtWidgets.QLabel(self.MotionTab)
        self.exportBox.setGeometry(QtCore.QRect(30, 80, 51, 20))
        self.exportBox.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)
        self.exportBox.setObjectName("exportBox")
        self.animExportButton = QtWidgets.QPushButton(self.MotionTab)
        self.animExportButton.setGeometry(QtCore.QRect(90, 270, 611, 20))
        self.animExportButton.setObjectName("animExportButton")
        self.charaNameDisplay = QtWidgets.QLabel(self.MotionTab)
        self.charaNameDisplay.setGeometry(QtCore.QRect(40, 20, 41, 20))
        self.charaNameDisplay.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)
        self.charaNameDisplay.setObjectName("charaNameDisplay")
        self.ingameButton1 = QtWidgets.QRadioButton(self.MotionTab)
        self.ingameButton1.setGeometry(QtCore.QRect(130, 140, 91, 16))
        self.ingameButton1.setChecked(True)
        self.ingameButton1.setObjectName("ingameButton1")
        self.ingameButton2 = QtWidgets.QRadioButton(self.MotionTab)
        self.ingameButton2.setGeometry(QtCore.QRect(260, 140, 110, 16))
        self.ingameButton2.setObjectName("ingameButton2")
        self.weapNameDisplay = QtWidgets.QLabel(self.MotionTab)
        self.weapNameDisplay.setGeometry(QtCore.QRect(40, 50, 41, 20))
        self.weapNameDisplay.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)
        self.weapNameDisplay.setObjectName("weapNameDisplay")
        self.exportPathInput = QtWidgets.QLineEdit(self.MotionTab)
        self.exportPathInput.setGeometry(QtCore.QRect(90, 80, 611, 21))
        self.exportPathInput.setObjectName("exportPathInput")
        self.motionInput = QtWidgets.QLineEdit(self.MotionTab)
        self.motionInput.setGeometry(QtCore.QRect(90, 110, 611, 21))
        self.motionInput.setObjectName("motionInput")
        self.charaNameInput = QtWidgets.QLineEdit(self.MotionTab)
        self.charaNameInput.setGeometry(QtCore.QRect(90, 20, 241, 21))
        self.charaNameInput.setObjectName("charaNameInput")
        self.weapNameInput = QtWidgets.QLineEdit(self.MotionTab)
        self.weapNameInput.setGeometry(QtCore.QRect(90, 50, 241, 21))
        self.weapNameInput.setObjectName("weapNameInput")
        self.helperShadowBox = QtWidgets.QCheckBox(self.MotionTab)
        self.helperShadowBox.setGeometry(QtCore.QRect(380, 140, 181, 16))
        self.helperShadowBox.setChecked(True)
        self.helperShadowBox.setObjectName("helperShadowBox")
        self.ExporterTab.addTab(self.MotionTab, "")
        self.ModelTab = QtWidgets.QWidget()
        self.ModelTab.setObjectName("ModelTab")
        self.charaNameDisplay_2 = QtWidgets.QLabel(self.ModelTab)
        self.charaNameDisplay_2.setGeometry(QtCore.QRect(40, 20, 41, 20))
        self.charaNameDisplay_2.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)
        self.charaNameDisplay_2.setObjectName("charaNameDisplay_2")
        self.exportBox_2 = QtWidgets.QLabel(self.ModelTab)
        self.exportBox_2.setGeometry(QtCore.QRect(30, 50, 51, 20))
        self.exportBox_2.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)
        self.exportBox_2.setObjectName("exportBox_2")
        self.modelExportButton = QtWidgets.QPushButton(self.ModelTab)
        self.modelExportButton.setGeometry(QtCore.QRect(90, 270, 611, 20))
        self.modelExportButton.setObjectName("modelExportButton")
        self.charaNameInput_2 = QtWidgets.QLineEdit(self.ModelTab)
        self.charaNameInput_2.setGeometry(QtCore.QRect(90, 20, 241, 21))
        self.charaNameInput_2.setObjectName("charaNameInput_2")
        self.exportPathInput_2 = QtWidgets.QLineEdit(self.ModelTab)
        self.exportPathInput_2.setGeometry(QtCore.QRect(90, 50, 611, 21))
        self.exportPathInput_2.setObjectName("exportPathInput_2")
        self.ExporterTab.addTab(self.ModelTab, "")

        self.retranslateUi(MainWindow)
        self.ExporterTab.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QtWidgets.QApplication.translate("MainWindow", "SER 出力ツール", None, -1))
        self.motionNameDisplay.setText(QtWidgets.QApplication.translate("MainWindow", "モーション名：", None, -1))
        self.exportBox.setText(QtWidgets.QApplication.translate("MainWindow", "出力パス", None, -1))
        self.animExportButton.setText(QtWidgets.QApplication.translate("MainWindow", "出力", None, -1))
        self.charaNameDisplay.setText(QtWidgets.QApplication.translate("MainWindow", "キャラ名", None, -1))
        self.ingameButton1.setText(QtWidgets.QApplication.translate("MainWindow", "モーション", None, -1))
        self.ingameButton2.setText(QtWidgets.QApplication.translate("MainWindow", "カメラ", None, -1))
        self.weapNameDisplay.setText(QtWidgets.QApplication.translate("MainWindow", "武器名", None, -1))
        self.helperShadowBox.setText(QtWidgets.QApplication.translate("MainWindow", "Helper_Shadow 0.001 設定", None, -1))
        self.ExporterTab.setTabText(self.ExporterTab.indexOf(self.MotionTab), QtWidgets.QApplication.translate("MainWindow", "モーション出力", None, -1))
        self.charaNameDisplay_2.setText(QtWidgets.QApplication.translate("MainWindow", "キャラ名", None, -1))
        self.exportBox_2.setText(QtWidgets.QApplication.translate("MainWindow", "出力パス", None, -1))
        self.modelExportButton.setText(QtWidgets.QApplication.translate("MainWindow", "出力", None, -1))
        self.ExporterTab.setTabText(self.ExporterTab.indexOf(self.ModelTab), QtWidgets.QApplication.translate("MainWindow", "モデル出力", None, -1))

