QT += core gui widgets
TARGET = ShortcutManager
TEMPLATE = app
HEADERS += \
    qxtglobalshortcut.h \
    qxtglobalshortcut_p.h

SOURCES += \
    qxtglobalshortcut.cpp \
    main.cpp

QMAKE_CXXFLAGS += -std=c++11

win32 {
    SOURCES += win/qxtglobalshortcut_win.cpp
}

unix {
    SOURCES += x11/qxtglobalshortcut_x11.cpp
}

mac {
    SOURCES += mac/qxtglobalshortcut_mac.cpp
}
