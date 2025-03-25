######################
# Dank Linux Package:
# RXVT
######################
RXVT_VERSION = 9.31
RXVT_SOURCE = rxvt-unicode-$(RXVT_VERSION).tar.bz2
RXVT_SITE = http://dist.schmorp.de/rxvt-unicode
RXVT_AUTORECONF = YES
#RXVT_AUTORECONF_OPTS = --verbose
RXVT_DEPENDENCIES = libptytty 
#RXVT_CONF_OPTS = --disable-schemas-install --disable-ssindex --without-psiconv --without-perl --without-python --without-gda --disable-ssconvert --disable-ssgrep
#ABIWORD_AUTORECONF_OPTS = -fvi
#ABIWORD_CONF_OPTS = --with-opengl=no
#GNUMERIC_INSTALL_TARGET_OPTS = VERBOSE=1 V=1

# dumb fix to make autotools do what its supposed to do?
define RXVT_PRE_CONFIGURE_BOOTSTRAP
        cd $(@D)/ && ./autogen.sh
endef

RXVT_PRE_CONFIGURE_HOOKS += RXVT_PRE_CONFIGURE_BOOTSTRAP

$(eval $(autotools-package))

