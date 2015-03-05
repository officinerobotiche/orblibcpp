message("Added orblibcpp")

PATH = $$PWD

INCLUDEPATH += $$PATH/include

HEADERS += \
    $$PATH/include/AsyncSerial.h \
    $$PATH/include/AsyncSerial.cpp \
    $$PATH/include/PacketSerial.cpp \
    $$PATH/include/ParserPacket.cpp \
    $$PATH/include/packet/packet.h \
    $$PATH/include/packet/motion.h \
    $$PATH/include/packet/navigation.h

SOURCES += \
    $$PATH/src/AsyncSerial.cpp \
    $$PATH/src/PacketSerial.cpp \
    $$PATH/src/ParserPacket.cpp

linux {
    LIBS += \
        -lboost_system \
        -lboost_thread
}

windows {
    INCLUDEPATH += C:/devel/boost_1_57_0

    LIBS += -LC:\devel/boost_1_57_0/stage\lib \
        -llibboost_system-vc110-mt-1_57 \
        -llibboost_thread-vc110-mt-1_57

}
