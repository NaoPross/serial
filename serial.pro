#-------------------------------------------------
#
# Project created by QtCreator 2018-03-23T10:35:36
#
#-------------------------------------------------

# Remove QT dependencies
QT       -= core gui

TARGET = serial
TEMPLATE = lib

DEFINES += SERIAL_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

INCLUDEPATH += include

win32:LIBS += -lsetupapi

SOURCES += \
    src/impl/list_ports/list_ports_linux.cc \
    src/impl/list_ports/list_ports_osx.cc \
    src/impl/list_ports/list_ports_win.cc \
    src/impl/unix.cc \
    src/impl/win.cc \
    src/serial.cc

HEADERS += \
    serial_global.h \
    include/serial/impl/unix.h \
    include/serial/impl/win.h \
    include/serial/serial.h \
    include/serial/v8stdint.h \

unix {
    target.path = /usr/lib
    INSTALLS += target
}
