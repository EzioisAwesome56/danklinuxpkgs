######################
# Dank Linux Package:
# sakura terminal
######################
SAKURA_VERSION = 2.4.2
SAKURA_SOURCE = sakura_$(SAKURA_VERSION).orig.tar.gz
SAKURA_SITE = https://snapshot.debian.org/archive/debian/20110803T032011Z/pool/main/s/sakura
#GIMP_AUTORECONF = YES
#GIMP_AUTORECONF_OPTS = --verbose
SAKURA_DEPENDENCIES = libgtk2 xlib_libX11 vte_leg
#SAKURA_CONF_OPTS = --disable-scrollkeeper
#GTERM_CONF_ENV = CFLAGS="-lm -lX11"
#ABIWORD_AUTORECONF_OPTS = -fvi
#ABIWORD_CONF_OPTS = --with-opengl=no

$(eval $(cmake-package))
