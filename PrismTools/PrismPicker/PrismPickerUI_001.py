# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'E:/ChewTools/PrismTools/PrismPicker/PrismPickerUI_001.ui'
#
# Created: Tue Feb 13 21:50:16 2018
#      by: pyside2-uic  running on PySide2 2.0.0~alpha0
#
# WARNING! All changes made in this file will be lost!

from PySide2 import QtCore, QtGui, QtWidgets

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(700, 700)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.headButton = QtWidgets.QToolButton(self.centralwidget)
        self.headButton.setGeometry(QtCore.QRect(360, 40, 71, 71))
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap(":/UIBG/UI_button.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.headButton.setIcon(icon)
        self.headButton.setIconSize(QtCore.QSize(100, 100))
        self.headButton.setObjectName("headButton")
        self.neckButton = QtWidgets.QToolButton(self.centralwidget)
        self.neckButton.setGeometry(QtCore.QRect(380, 110, 30, 30))
        self.neckButton.setText("")
        self.neckButton.setIcon(icon)
        self.neckButton.setIconSize(QtCore.QSize(100, 100))
        self.neckButton.setObjectName("neckButton")
        self.chestButton3 = QtWidgets.QToolButton(self.centralwidget)
        self.chestButton3.setGeometry(QtCore.QRect(360, 140, 70, 70))
        self.chestButton3.setText("")
        self.chestButton3.setIcon(icon)
        self.chestButton3.setIconSize(QtCore.QSize(100, 100))
        self.chestButton3.setObjectName("chestButton3")
        self.chestButton2 = QtWidgets.QToolButton(self.centralwidget)
        self.chestButton2.setGeometry(QtCore.QRect(370, 220, 50, 50))
        self.chestButton2.setText("")
        self.chestButton2.setIcon(icon)
        self.chestButton2.setIconSize(QtCore.QSize(100, 100))
        self.chestButton2.setObjectName("chestButton2")
        self.chestButton1 = QtWidgets.QToolButton(self.centralwidget)
        self.chestButton1.setGeometry(QtCore.QRect(370, 280, 50, 50))
        self.chestButton1.setText("")
        self.chestButton1.setIcon(icon)
        self.chestButton1.setIconSize(QtCore.QSize(100, 100))
        self.chestButton1.setObjectName("chestButton1")
        self.fkUpperArm = QtWidgets.QLabel(self.centralwidget)
        self.fkUpperArm.setGeometry(QtCore.QRect(250, 150, 101, 31))
        self.fkUpperArm.setObjectName("fkUpperArm")
        self.fkLowerArm = QtWidgets.QLabel(self.centralwidget)
        self.fkLowerArm.setGeometry(QtCore.QRect(130, 150, 101, 31))
        self.fkLowerArm.setObjectName("fkLowerArm")
        self.ik_Right = QtWidgets.QLabel(self.centralwidget)
        self.ik_Right.setGeometry(QtCore.QRect(70, 140, 51, 51))
        self.ik_Right.setObjectName("ik_Right")
        self.fkUpperArm_2 = QtWidgets.QLabel(self.centralwidget)
        self.fkUpperArm_2.setGeometry(QtCore.QRect(350, 350, 21, 111))
        self.fkUpperArm_2.setObjectName("fkUpperArm_2")
        self.fkUpperArm_3 = QtWidgets.QLabel(self.centralwidget)
        self.fkUpperArm_3.setGeometry(QtCore.QRect(350, 480, 21, 131))
        self.fkUpperArm_3.setObjectName("fkUpperArm_3")
        MainWindow.setCentralWidget(self.centralwidget)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QtWidgets.QApplication.translate("MainWindow", "MainWindow", None, -1))
        self.headButton.setToolTip(QtWidgets.QApplication.translate("MainWindow", "<html><head/><body><p><img src=\":/UIBG/UI_button.png\"/><img src=\":/UIBG/UI_button.png\"/></p></body></html>", None, -1))
        self.headButton.setText(QtWidgets.QApplication.translate("MainWindow", "aerasd", None, -1))
        self.neckButton.setToolTip(QtWidgets.QApplication.translate("MainWindow", "<html><head/><body><p><img src=\":/UIBG/UI_button.png\"/><img src=\":/UIBG/UI_button.png\"/></p></body></html>", None, -1))
        self.chestButton3.setToolTip(QtWidgets.QApplication.translate("MainWindow", "<html><head/><body><p><img src=\":/UIBG/UI_button.png\"/><img src=\":/UIBG/UI_button.png\"/></p></body></html>", None, -1))
        self.chestButton2.setToolTip(QtWidgets.QApplication.translate("MainWindow", "<html><head/><body><p><img src=\":/UIBG/UI_button.png\"/><img src=\":/UIBG/UI_button.png\"/></p></body></html>", None, -1))
        self.chestButton1.setToolTip(QtWidgets.QApplication.translate("MainWindow", "<html><head/><body><p><img src=\":/UIBG/UI_button.png\"/><img src=\":/UIBG/UI_button.png\"/></p></body></html>", None, -1))
        self.fkUpperArm.setText(QtWidgets.QApplication.translate("MainWindow", "<html><head/><body><p><img src=\":/UIBG/UI_button.png\"/></p></body></html>", None, -1))
        self.fkLowerArm.setText(QtWidgets.QApplication.translate("MainWindow", "<html><head/><body><p><img src=\":/UIBG/UI_button.png\"/></p></body></html>", None, -1))
        self.ik_Right.setText(QtWidgets.QApplication.translate("MainWindow", "<html><head/><body><p><img src=\":/UIBG/UI_button.png\"/></p></body></html>", None, -1))
        self.fkUpperArm_2.setText(QtWidgets.QApplication.translate("MainWindow", "<html><head/><body><p><img src=\":/UIBG/UI_button.png\"/></p></body></html>", None, -1))
        self.fkUpperArm_3.setText(QtWidgets.QApplication.translate("MainWindow", "<html><head/><body><p><img src=\":/UIBG/UI_button.png\"/></p></body></html>", None, -1))
