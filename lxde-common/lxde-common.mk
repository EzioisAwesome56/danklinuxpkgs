######################
# Dank Linux Package:
# lxde-common
######################
LXDE_COMMON_VERSION = 0.99.2
LXDE_COMMON_SOURCE = lxde-common-$(LXDE_COMMON_VERSION).tar.xz
LXDE_COMMON_SITE = https://downloads.sourceforge.net/lxde
#LIBGSF_AUTORECONF = YES
LXDE_COMMON_DEPENDENCIES = host-intltool $(TARGET_NLS_DEPENDENCIES)
#ABIWORD_CONF_OPTS = --with-opengl=no

$(eval $(autotools-package))
