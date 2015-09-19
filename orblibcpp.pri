message("Added orblibcpp")

PATH = $$PWD

INCLUDEPATH += $$PATH/include

HEADERS += \
    $$PATH/include/serial_parser_packet/AsyncSerial.h \
    $$PATH/include/serial_parser_packet/AsyncSerial.h \
    $$PATH/include/serial_parser_packet/ParserPacket.h \
    $$PATH/include/packet/frame_motion.h \
    $$PATH/include/packet/frame_motor.h \
    $$PATH/include/packet/frame_navigation.h \
    $$PATH/include/packet/frame_system.h \
    $$PATH/include/packet/packet.h \
    $$PATH/include/interface/unavinterface.h

SOURCES += \
    $$PATH/src/serial_parser_packet/AsyncSerial.cpp \
    $$PATH/src/serial_parser_packet/PacketSerial.cpp \
    $$PATH/src/serial_parser_packet/ParserPacket.cpp \
    $$PATH/src/interface/unavinterface.cpp	

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
