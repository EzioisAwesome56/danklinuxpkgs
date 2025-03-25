######################
# Dank Linux Package:
# libptytty
######################
LIBPTYTTY_VERSION = 2.0
LIBPTYTTY_SOURCE = libptytty-$(LIBPTYTTY_VERSION).tar.gz
LIBPTYTTY_SITE = http://dist.schmorp.de/libptytty
#LIBPTYTTY_AUTORECONF = YES
#RXVT_AUTORECONF_OPTS = --verbose
#RXVT_DEPENDENCIES = 
#RXVT_CONF_OPTS = --disable-schemas-install --disable-ssindex --without-psiconv --without-perl --without-python --without-gda --disable-ssconvert --disable-ssgrep
#ABIWORD_AUTORECONF_OPTS = -fvi
#ABIWORD_CONF_OPTS = --with-opengl=no
#GNUMERIC_INSTALL_TARGET_OPTS = VERBOSE=1 V=1


$(eval $(cmake-package))

