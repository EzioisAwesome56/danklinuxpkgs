######################
# Dank Linux Package:
# gnumeric
######################
GNUMERIC_VERSION = 1.10.17
GNUMERIC_SOURCE = gnumeric-$(GNUMERIC_VERSION).tar.bz2
GNUMERIC_SITE = https://download.gnome.org/sources/gnumeric/1.10
GNUMERIC_AUTORECONF = YES
GNUMERIC_AUTORECONF_OPTS = --verbose
GNUMERIC_DEPENDENCIES = libgtk2 libglade goffice
GNUMERIC_CONF_OPTS = --disable-schemas-install --disable-ssindex --without-psiconv --without-perl --without-python --without-gda --disable-ssconvert --disable-ssgrep
#ABIWORD_AUTORECONF_OPTS = -fvi
#ABIWORD_CONF_OPTS = --with-opengl=no
GNUMERIC_INSTALL_TARGET_OPTS = VERBOSE=1

$(eval $(autotools-package))
