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
#   File: texta.pri
#
# Author: $author$
#   Date: 7/19/2021
#
# QtCreator .pri file for texta executable texta
########################################################################

########################################################################
# texta

# texta_exe TARGET
#
texta_exe_TARGET = texta

# texta_exe INCLUDEPATH
#
texta_exe_INCLUDEPATH += \
$${texta_INCLUDEPATH} \

# texta_exe DEFINES
#
texta_exe_DEFINES += \
$${texta_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_APP_CONSOLE_TEXTA_MAIN_INSTANCE \

########################################################################
# texta_exe OBJECTIVE_HEADERS
#
#texta_exe_OBJECTIVE_HEADERS += \
#$${TEXTA_SRC}/xos/app/console/texta/main.hh \

# texta_exe OBJECTIVE_SOURCES
#
#texta_exe_OBJECTIVE_SOURCES += \
#$${TEXTA_SRC}/xos/app/console/texta/main.mm \

########################################################################
# texta_exe HEADERS
#
texta_exe_HEADERS += \
$${TEXTA_SRC}/texta/base/base.hpp \
$${TEXTA_SRC}/texta/base/logger.hpp \
$${TEXTA_SRC}/texta/base/main.hpp \
$${TEXTA_SRC}/texta/base/main_main.hpp \
\
$${TEXTA_SRC}/texta/io/logger.hpp \
$${TEXTA_SRC}/texta/io/writer.hpp \
$${TEXTA_SRC}/texta/io/reader.hpp \
\
$${TEXTA_SRC}/texta/t/t.hpp \
$${TEXTA_SRC}/texta/t/value.hpp \
$${TEXTA_SRC}/texta/t/value_list.hpp \
$${TEXTA_SRC}/texta/t/value_item.hpp \
\
$${TEXTA_SRC}/texta/t/variable.hpp \
$${TEXTA_SRC}/texta/t/variable_tree.hpp \
$${TEXTA_SRC}/texta/t/variable_branch.hpp \
$${TEXTA_SRC}/texta/t/variable_leaf.hpp \
$${TEXTA_SRC}/texta/t/variable_list.hpp \
$${TEXTA_SRC}/texta/t/variable_item.hpp \
\
$${TEXTA_SRC}/texta/t/function.hpp \
$${TEXTA_SRC}/texta/t/function_argument.hpp \
$${TEXTA_SRC}/texta/t/function_argument_list.hpp \
$${TEXTA_SRC}/texta/t/function_argument_item.hpp \
$${TEXTA_SRC}/texta/t/function_parameter.hpp \
$${TEXTA_SRC}/texta/t/function_extend.hpp \
$${TEXTA_SRC}/texta/t/function_named.hpp \
$${TEXTA_SRC}/texta/t/function_tree.hpp \
$${TEXTA_SRC}/texta/t/function_branch.hpp \
$${TEXTA_SRC}/texta/t/function_list.hpp \
$${TEXTA_SRC}/texta/t/function_item.hpp \
\
$${TEXTA_SRC}/texta/t/processor.hpp \
\
$${TEXTA_SRC}/texta/app/console/texta/main.hpp \
$${TEXTA_SRC}/texta/console/main.hpp \
$${TEXTA_SRC}/texta/console/main_opt.hpp \
$${TEXTA_SRC}/texta/console/main_main.hpp \

# texta_exe SOURCES
#
texta_exe_SOURCES += \
$${TEXTA_SRC}/texta/io/logger.cpp \
$${TEXTA_SRC}/texta/io/writer.cpp \
$${TEXTA_SRC}/texta/io/reader.cpp \
\
$${TEXTA_SRC}/texta/t/t.cpp \
$${TEXTA_SRC}/texta/t/value.cpp \
$${TEXTA_SRC}/texta/t/value_list.cpp \
$${TEXTA_SRC}/texta/t/value_item.cpp \
\
$${TEXTA_SRC}/texta/t/variable.cpp \
$${TEXTA_SRC}/texta/t/variable_tree.cpp \
$${TEXTA_SRC}/texta/t/variable_branch.cpp \
$${TEXTA_SRC}/texta/t/variable_leaf.cpp \
$${TEXTA_SRC}/texta/t/variable_list.cpp \
$${TEXTA_SRC}/texta/t/variable_item.cpp \
\
$${TEXTA_SRC}/texta/t/function.cpp \
$${TEXTA_SRC}/texta/t/function_argument.cpp \
$${TEXTA_SRC}/texta/t/function_argument_list.cpp \
$${TEXTA_SRC}/texta/t/function_argument_item.cpp \
$${TEXTA_SRC}/texta/t/function_parameter.cpp \
$${TEXTA_SRC}/texta/t/function_extend.cpp \
$${TEXTA_SRC}/texta/t/function_named.cpp \
$${TEXTA_SRC}/texta/t/function_tree.cpp \
$${TEXTA_SRC}/texta/t/function_branch.cpp \
$${TEXTA_SRC}/texta/t/function_list.cpp \
$${TEXTA_SRC}/texta/t/function_item.cpp \
\
$${TEXTA_SRC}/texta/t/processor.cpp \
\
$${TEXTA_SRC}/texta/app/console/texta/main.cpp \
$${TEXTA_SRC}/texta/console/main_opt.cpp \
$${TEXTA_SRC}/texta/console/main_main.cpp \

# texta_exe SOURCES
#
texta_exe_SOURCES += \
$${texta_functions_SOURCES} 

########################################################################
# texta_exe FRAMEWORKS
#
texta_exe_FRAMEWORKS += \
$${texta_FRAMEWORKS} \

# texta_exe LIBS
#
texta_exe_LIBS += \
$${texta_LIBS} \
