######################
# Dank Linux Package:
# abiword
######################
ABIWORD_VERSION = 2.6.4
ABIWORD_SOURCE = abiword_$(ABIWORD_VERSION).orig.tar.gz
ABIWORD_SITE = https://snapshot.debian.org/archive/debian-archive/20120328T092752Z/debian/pool/main/a/abiword
ABIWORD_AUTORECONF = YES
ABIWORD_DEPENDENCIES = librsvg_old libgsf wv enchant boost libxslt libgtk2 goffice libglade
ABIWORD_CONF_OPTS = --disable-printing --disable-gnomevfs --disable-gnomeui 
ABIWORD_AUTORECONF_OPTS = -fvi
#ABIWORD_CONF_OPTS = --with-opengl=no

# dumb fix to make autotools do what its supposed to do?
#define ABIWORD_PRE_CONFIGURE_BOOTSTRAP
#	cd $(@D)/ && ./autogen-common.sh
#endef

# abiword 2.6.4 comes in a weird format, with many folders
# so we need to move the actual abiword source folder first
define ABIWORD_FIX_STRUCTURE
	echo "Moving contents of abiword folder to root build dir..."
	mv $(@D)/abiword/* $(@D)/
endef

#ABIWORD_PRE_CONFIGURE_HOOKS += ABIWORD_PRE_CONFIGURE_BOOTSTRAP
ABIWORD_POST_EXTRACT_HOOKS += ABIWORD_FIX_STRUCTURE

$(eval $(autotools-package))
