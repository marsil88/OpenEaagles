# OpenEaagles linearSys library profile

# Define the Visual studio compiler version we wish to use (Windows only)
include(../config.pri)

# Target names
win32:CONFIG(release, debug|release): TARGET = oeLinearSys
else:win32:CONFIG(debug, debug|release): TARGET = oeLinearSys_d
else:unix:!macx:!symbian: TARGET = oeLinearSys

# Include paths
INCLUDEPATH += \
   $${OE_ROOT}/include                      \
   $${OE_3RD_PARTY_ROOT}/include

# Header files
HEADERS += \
   $${OE_ROOT}/include/openeaagles/linearSys/*.h

# Source files
SOURCES += \
   $${OE_ROOT}/src/linearSys/*.cpp
