######################
# Dank Linux Package:
# libwnck
######################
LIBWNCK_VERSION = 2.31.0
LIBWNCK_SOURCE = libwnck-$(LIBWNCK_VERSION).tar.xz
LIBWNCK_SITE = https://download.gnome.org/sources/libwnck/2.31
#LIBGSF_AUTORECONF = YES
LIBWNCK_DEPENDENCIES = libgtk2 host-intltool $(TARGET_NLS_DEPENDENCIES) xlib_libX11 xlib_libXres
LIBWNCK_DEPENDENCIES += pango cairo
LIBWNCK_CONF_OPTS += --disable-static
# how did i manage to forget this?
LIBWNCK_INSTALL_STAGING = YES

$(eval $(autotools-package))

