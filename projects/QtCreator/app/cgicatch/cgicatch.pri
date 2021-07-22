########################################################################
# Copyright (c) 1988-2021 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: cgicatch.pri
#
# Author: $author$
#   Date: 7/22/2021
#
# QtCreator .pri file for texta executable cgicatch
########################################################################

########################################################################
# cgicatch

# cgicatch TARGET
#
cgicatch_TARGET = cgicatch

# cgicatch INCLUDEPATH
#
cgicatch_INCLUDEPATH += \
$${texta_INCLUDEPATH} \

# cgicatch DEFINES
#
cgicatch_DEFINES += \
$${texta_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
TEXTA_APP_CGI_CATCHER_MAIN_INSTANCE \

########################################################################
# cgicatch OBJECTIVE_HEADERS
#
#cgicatch_OBJECTIVE_HEADERS += \
#$${TEXTA_SRC}/xos/app/console/cgicatch/main.hh \

# cgicatch OBJECTIVE_SOURCES
#
#cgicatch_OBJECTIVE_SOURCES += \
#$${TEXTA_SRC}/xos/app/console/cgicatch/main.mm \

########################################################################
# cgicatch HEADERS
#
cgicatch_HEADERS += \
$${TEXTA_SRC}/texta/coral/app/cgi/main.hpp \
$${TEXTA_SRC}/texta/coral/app/cgi/catcher/main.hpp \
$${TEXTA_SRC}/texta/app/cgi/catcher/main.hpp \
\
$${TEXTA_SRC}/texta/inet/cgi/main_main.hpp \

# cgicatch SOURCES
#
cgicatch_SOURCES += \
$${TEXTA_SRC}/texta/app/cgi/catcher/main.cpp \
\
$${TEXTA_SRC}/texta/inet/cgi/main_main.cpp \

########################################################################
# cgicatch FRAMEWORKS
#
cgicatch_FRAMEWORKS += \
$${texta_FRAMEWORKS} \

# cgicatch LIBS
#
cgicatch_LIBS += \
$${texta_LIBS} \


