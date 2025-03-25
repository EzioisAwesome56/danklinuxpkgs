######################
# Dank Linux Package:
# lxpanel
######################
LXPANEL_VERSION = 0.10.1
LXPANEL_SOURCE = lxpanel-$(LXPANEL_VERSION).tar.xz
LXPANEL_SITE = https://downloads.sourceforge.net/lxde
#LIBGSF_AUTORECONF = YES
LXPANEL_DEPENDENCIES = alsa-lib libwnck libgtk2 host-intltool $(TARGET_NLS_DEPENDENCIES) keybinder2
LXPANEL_CONF_OPTS = --disable-plugins-loading --with-plugins=none

$(eval $(autotools-package))
