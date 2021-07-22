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
///   Date: 7/21/2021
///////////////////////////////////////////////////////////////////////
#ifndef TEXTA_APP_CGI_MAIN_HPP
#define TEXTA_APP_CGI_MAIN_HPP

#if !defined(USE_TEXTA_NADIR_BASE)
#include "texta/coral/app/cgi/main.hpp"
#else // !defined(USE_TEXTA_NADIR_BASE)
#include "texta/nadir/app/cgi/main.hpp"
#endif // !defined(USE_TEXTA_NADIR_BASE)
#include "texta/inet/cgi/main.hpp"

#define TEXTA_INET_CGI_NAME "cgi"
#define TEXTA_INET_CGI_PARAM_CONTENT_TYPE_NAMES \
    "content_type", \
    CORAL_INET_HTTP_MESSAGE_HEADER_NAME_CONTENT_TYPE, \

namespace texta {
namespace app {
namespace cgi {
namespace extended {

typedef inet::cgi::main_implements main_implements;
typedef inet::cgi::main main_extends;
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
template <class TImplements = main_implements, class TExtends = main_extends>
class _EXPORT_CLASS maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    maint(): cgi_name_(TEXTA_INET_CGI_NAME) {
    }
    virtual ~maint() {
    }

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual int run_cgi(int argc, char_t** argv, char_t** env) {
        const char_t* chars = 0; size_t length = 0;
        texta::inet::http::form::fields::iterator 
        b = this->form().begin(), e = this->form().end();

        if ((chars = param_content_type(length))) {
            this->set_content_type(chars);
        } else {
            if ((chars = this->content_type_html())) {
                this->set_content_type(chars);
            }
        }
        this->outl(H1_, cgi_name_.chars(), _H1, NULL_POINTER);
        if ((b != e)) {
            for (texta::inet::http::form::fields::iterator i = b; i != e; ++i) {
                texta::inet::http::form::field& f = *i;
                const char_t *name = f.name().has_chars(), *value = f.value().chars();

                if ((name) && (value)) {
                    this->outl(B_, "\"", _B, name, _B, "\" = \"", _B, value, B_, "\"", _B, BR, NULL_POINTER);
                }
            }
            this->outl(_UL, NULL_POINTER);
        }
        return 0;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual const char_t* param_content_type(size_t& length) const {
        const char_t* chars = 0;
        chars = this->form_value_has_chars(length, param_content_type_names());
        return chars;
    }
    virtual const char_t** param_content_type_names() const {
        static const char_t* names[] = {
            TEXTA_INET_CGI_PARAM_CONTENT_TYPE_NAMES
            0
        };
        return names;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    string cgi_name_;
}; /// class _EXPORT_CLASS maint
typedef maint<> main;

} /// namespace extended
} /// namespace cgi
} /// namespace app
} /// namespace texta

#endif /// TEXTA_APP_CGI_MAIN_HPP
