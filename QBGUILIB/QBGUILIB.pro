#-------------------------------------------------
#
# Project created by QtCreator 2017-12-19T18:41:17
#
#-------------------------------------------------

QT       += widgets

TARGET = QBGUILIB
TEMPLATE = lib

DEFINES += QBGUILIB_LIBRARY

SOURCES += LDrawWgt.cpp \
    IconHelper.cpp \
    LDrawFilterWgt.cpp

HEADERS += LDrawWgt.h\
        qbguilib_global.h \
    IconHelper.h \
    LDrawFilterWgt.h \
    LCommon.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}


LXRAMEBIN_ROOT =  ../Bin
LXRAMELIB_ROOT =  ../Lib

#����debug��releaseģʽ
CONFIG(debug, debug|release) {
    unix: TARGET = $$join(TARGET,,,_debug)
    else: TARGET = $$join(TARGET,,,d)

    #LXRAMEBIN_ROOT =  ../Bin_d
}

INCLUDEPATH += ../Inc

win32{
    DESTDIR += $$LXRAMELIB_ROOT     #ָ������LIB��·
    DLLDESTDIR = $$LXRAMEBIN_ROOT   #ָ������DLL��·
}
