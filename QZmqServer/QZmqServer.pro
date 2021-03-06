#-------------------------------------------------
#
# Project created by QtCreator 2017-12-21T15:41:59
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QZmqServer
TEMPLATE = app


SOURCES += main.cpp\
        LeonWgt.cpp

HEADERS  += LeonWgt.h

FORMS    += LeonWgt.ui

RESOURCES += \
    res.qrc

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../Lib/ -lQBGUILIB
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../Lib/ -lQBGUILIBd

INCLUDEPATH += $$PWD/../Lib
DEPENDPATH += $$PWD/../Lib

#Zmq库
LIBS += -L$$PWD/../Zmq/ -llibzmq-v120-mt-4_0_4
LIBS += -L$$PWD/../Zmq/ -llibzmq-v120-mt-gd-4_0_4
INCLUDEPATH += $$PWD/../Zmq
DEPENDPATH += $$PWD/../Zmq
