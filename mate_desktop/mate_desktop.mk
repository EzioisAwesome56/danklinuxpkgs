######################
# Dank Linux Package:
# mate-desktop
# only for libmatedesktop tho
######################
MATE_DESKTOP_VERSION = 1.14.1
MATE_DESKTOP_SOURCE = mate-desktop_$(MATE_DESKTOP_VERSION).orig.tar.xz
MATE_DESKTOP_SITE = https://snapshot.debian.org/archive/debian/20160529T051204Z/pool/main/m/mate-desktop
MATE_DESKTOP_AUTORECONF = YES
MATE_DESKTOP_AUTORECONF_OPTS = -fvi
MATE_DESKTOP_DEPENDENCIES = libgtk2 gconf gsettings-desktop-schemas host-intltool $(TARGET_NLS_DEPENDENCIES)
MATE_DESKTOP_CONF_OPTS = --with-gtk=2.0 --disable-mate-about --disable-startup-notification --disable-mpaste 
MATE_DESKTOP_INSTALL_STAGING = YES

#define MATEEYE_AUTOGEN
#	cd $(@D) && ./autogen.sh
#endef

#MATEEYE_POST_EXTRACT_HOOKS += MATEEYE_AUTOGEN

$(eval $(autotools-package))
