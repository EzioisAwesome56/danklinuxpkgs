######################
# Dank Linux Package:
# librsvg 2.40.21
######################
LIBRSVG_OLD_VERSION = 2.40.21
LIBRSVG_OLD_SOURCE = librsvg-$(LIBRSVG_OLD_VERSION).tar.xz
LIBRSVG_OLD_SITE = https://download.gnome.org/sources/librsvg/2.40
LIBRSVG_OLD_AUTORECONF = YES
LIBRSVG_OLD_DEPENDENCIES = libcrocoreinst gobject-introspection pango gdk-pixbuf
LIBRSVG_OLD_INSTALL_STAGING = YES
LIBRSVG_OLD_CONF_OPTS = --disable-pixbuf-loader
#ABIWORD_CONF_OPTS = --with-opengl=no

$(eval $(autotools-package))
