######################
# Dank Linux Package:
# lxsession
######################
LXSESSION_VERSION = 0.5.5
LXSESSION_SOURCE = lxsession-$(LXSESSION_VERSION).tar.xz
LXSESSION_SITE = https://downloads.sourceforge.net/lxde
#LIBGSF_AUTORECONF = YES
LXSESSION_DEPENDENCIES = libgtk2 host-intltool $(TARGET_NLS_DEPENDENCIES) polkit
#ABIWORD_CONF_OPTS = --with-opengl=no

$(eval $(autotools-package))
