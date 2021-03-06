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
///   File: main.hpp
///
/// Author: $author$
///   Date: 7/22/2021
///////////////////////////////////////////////////////////////////////
#ifndef TEXTA_CORAL_APP_CGI_MAIN_HPP
#define TEXTA_CORAL_APP_CGI_MAIN_HPP

#include "texta/coral/inet/cgi/main.hpp"
#include "coral/app/cgi/main.hpp"

namespace texta {
namespace app {
namespace cgi {

typedef ::coral::app::cgi::main_implements main_implements;
typedef ::coral::app::cgi::main main_extends;
///////////////////////////////////////////////////////////////////////
///  Class: main
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS main: virtual public main_implements, public main_extends {
public:
    typedef main_implements Implements;
    typedef main_extends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    main() {
    }
    virtual ~main() {
    }
private:
    main(const main& copy) {
    }

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};

} /// namespace cgi
} /// namespace app
} /// namespace texta

#endif /// TEXTA_CORAL_APP_CGI_MAIN_HPP
