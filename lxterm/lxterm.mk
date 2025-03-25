######################
# Dank Linux Package:
# lxterm
######################
LXTERM_VERSION = 0.4.0
LXTERM_SOURCE = lxterminal-$(LXTERM_VERSION).tar.xz
LXTERM_SITE = https://downloads.sourceforge.net/lxde
#LIBGSF_AUTORECONF = YES
LXTERM_DEPENDENCIES = vte_leg host-intltool $(TARGET_NLS_DEPENDENCIES)
#ABIWORD_CONF_OPTS = --with-opengl=no

$(eval $(autotools-package))
