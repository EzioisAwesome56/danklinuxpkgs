######################
# Dank Linux Package:
# vte 0.28.2
######################
VTE_LEG_VERSION = 0.28.2
VTE_LEG_SOURCE = vte-$(VTE_LEG_VERSION).tar.xz
VTE_LEG_SITE = https://download.gnome.org/sources/vte/0.28
VTE_LEG_AUTORECONF = YES
VTE_LEG_DEPENDENCIES = libgtk2 gobject-introspection gettext
VTE_LEG_INSTALL_STAGING = YES
VTE_LEG_CONF_OPTS += --disable-static --enable-introspection --with-gtk=2.0 --disable-gnome-pty-helper
#ABIWORD_CONF_OPTS = --with-opengl=no

$(eval $(autotools-package))
