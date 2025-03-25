######################
# Dank Linux Package:
# eye of mate
######################
MATEEYE_VERSION = 1.14.2
MATEEYE_SOURCE = eom_$(MATEEYE_VERSION).orig.tar.xz
MATEEYE_SITE = https://snapshot.debian.org/archive/debian-debug/20160822T162845Z/pool/main/e/eom
MATEEYE_AUTORECONF = YES
MATEEYE_AUTORECONF_OPTS = -fvi
MATEEYE_DEPENDENCIES = libgtk2 gconf gsettings-desktop-schemas host-intltool $(TARGET_NLS_DEPENDENCIES) shared-mime-info mate_desktop
MATEEYE_CONF_OPTS = --with-gtk=2.0 --disable-python
MATEEYE_INSTALL_STAGING = YES

define MATEEYE_AUTOGEN
	cd $(@D) && ./autogen.sh
endef

#MATEEYE_POST_EXTRACT_HOOKS += MATEEYE_AUTOGEN

$(eval $(autotools-package))
