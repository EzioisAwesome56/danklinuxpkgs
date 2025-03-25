######################
# Dank Linux Package:
# Fox ui toolkit
######################
FOXTOOLKIT_VERSION = 1.6.59
FOXTOOLKIT_SOURCE = fox-$(FOXTOOLKIT_VERSION).tar.gz
FOXTOOLKIT_SITE = http://fox-toolkit.org/ftp
FOXTOOLKIT_AUTORECONF = YES
FOXTOOLKIT_INSTALL_STAGING = YES
FOXTOOLKIT_DEPENDENCIES = xserver_xorg-server
FOXTOOLKIT_CONF_OPTS = --with-opengl=no

$(eval $(autotools-package))
