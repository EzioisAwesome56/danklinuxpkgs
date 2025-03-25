######################
# Dank Linux Package:
# xfe files
######################
XFE_VERSION = 2.0.1
XFE_SOURCE = xfe-$(XFE_VERSION).tar.xz
# fix to sourceforge being cringe
XFE_SITE = https://downloads.sourceforge.net/sourceforge/xfe
XFE_DEPENDENCIES = foxtoolkit
XFE_AUTORECONF = YES
XFE_LIBTOOL_PATCH=NO
#FOXTOOLKIT_CONF_OPTS = --with-opengl=no

$(eval $(autotools-package))
