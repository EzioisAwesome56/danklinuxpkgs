######################
# Dank Linux Package:
# file-roller
######################
FILE_ROLLER_VERSION = 1.14.1
FILE_ROLLER_SOURCE = engrampa_$(FILE_ROLLER_VERSION).orig.tar.xz
FILE_ROLLER_SITE = https://snapshot.debian.org/archive/debian/20160527T163959Z/pool/main/e/engrampa
FILE_ROLLER_AUTORECONF = YES
FILE_ROLLER_DEPENDENCIES = libgtk2 gconf gsettings-desktop-schemas
FILE_ROLLER_CONF_OPTS = --disable-caja-actions --disable-packagekit --with-gtk=2.0
FILE_ROLLER_INSTALL_STAGING = YES

define FILE_ROLLER_AUTOGEN
	cd $(@D) && ./autogen.sh
endef

#FILE_ROLLER_POST_EXTRACT_HOOKS += FILE_ROLLER_AUTOGEN

$(eval $(autotools-package))
