######################
# Dank Linux Package:
# atril
######################
ATRIL_VERSION = 1.14.1
ATRIL_SOURCE = v$(ATRIL_VERSION).tar.gz
ATRIL_SITE = https://github.com/mate-desktop/atril/archive/refs/tags
ATRIL_AUTORECONF = YES
ATRIL_AUTORECONF_OPTS = -fvi
ATRIL_DEPENDENCIES = libgtk2 gconf gsettings-desktop-schemas host-intltool $(TARGET_NLS_DEPENDENCIES) cairo poppler mate_desktop
ATRIL_CONF_OPTS = --with-gtk=2.0 --without-gtk-unix-print --without-keyring --disable-caja --disable-thumbnailer --disable-previewer
ATRIL_INSTALL_STAGING = YES

#define MATEEYE_AUTOGEN
#	cd $(@D) && ./autogen.sh
#endef

#MATEEYE_POST_EXTRACT_HOOKS += MATEEYE_AUTOGEN

$(eval $(autotools-package))
