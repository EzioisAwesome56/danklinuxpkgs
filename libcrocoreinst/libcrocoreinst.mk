######################
# Dank Linux Package:
# libcroco 0.6.13
######################
LIBCROCOREINST_VERSION = 0.6.13
LIBCROCOREINST_SOURCE = libcroco-$(LIBCROCOREINST_VERSION).tar.xz
LIBCROCOREINST_SITE = https://download.gnome.org/sources/libcroco/0.6
LIBCROCOREINST_AUTORECONF = YES
LIBCROCOREINST_INSTALL_STAGING = YES
#LIBRSVG_OLD_DEPENDENCIES = xserver_xorg-server
#ABIWORD_CONF_OPTS = --with-opengl=no

$(eval $(autotools-package))
