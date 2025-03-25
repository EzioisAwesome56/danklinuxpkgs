######################
# Dank Linux Package:
# libgsf 
######################
LIBGSF_VERSION = 1.14.53
LIBGSF_SOURCE = libgsf-$(LIBGSF_VERSION).tar.xz
LIBGSF_SITE = https://download.gnome.org/sources/libgsf/1.14
#LIBGSF_AUTORECONF = YES
LIBGSF_INSTALL_STAGING = YES
LIBGSF_DEPENDENCIES = libxml2 host-intltool $(TARGET_NLS_DEPENDENCIES)
#ABIWORD_CONF_OPTS = --with-opengl=no

$(eval $(autotools-package))
