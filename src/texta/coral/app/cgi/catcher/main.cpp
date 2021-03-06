///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2021 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: main.cpp
///
/// Author: $author$
///   Date: 7/22/2021
///////////////////////////////////////////////////////////////////////
#include "texta/coral/app/cgi/catcher/main.hpp"

#if !defined(TEXTA_CORAL_APP_CGI_CATCHER_MAIN_INSTANCE)
///#define TEXTA_CORAL_APP_CGI_CATCHER_MAIN_INSTANCE
#endif /// !defined(TEXTA_CORAL_APP_CGI_CATCHER_MAIN_INSTANCE)

namespace texta {
namespace app {
namespace cgi {
namespace catcher {

#if defined(TEXTA_CORAL_APP_CGI_CATCHER_MAIN_INSTANCE)
static main the_main;
#endif /// defined(TEXTA_CORAL_APP_CGI_CATCHER_MAIN_INSTANCE)

} /// namespace catcher
} /// namespace cgi
} /// namespace app
} /// namespace texta
