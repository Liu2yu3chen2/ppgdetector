#
# VLC-Qt Simple Player
# Copyright (C) 2015 Tadej Novak <tadej@tano.si>
#

TARGET      = ppgViewer
TEMPLATE    = app

CONFIG 	   += c++11

QT         += widgets

SOURCES    += main.cpp

HEADERS    += utils.h \
              ppgViewer.h \
              ppgFilter.h \ 
              ppgDetector.h \

FORMS      += ppgViewer.ui

#LIBS       += -lVLCQtCore -lVLCQtWidgets

## Edit below for custom library location
#LIBS       += L/Library/Frameworks/ -lVLCQtCore -lVLCQtWidgets
#INCLUDEPATH += I/Applications/VLC.app/Contents/MacOS/include
