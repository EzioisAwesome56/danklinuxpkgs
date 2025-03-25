######################
# Dank Linux Package:
# gimp
######################
GIMP_VERSION = 2.4.7
GIMP_SOURCE = gimp-$(GIMP_VERSION).tar.bz2
GIMP_SITE = https://download.gimp.org/gimp/v2.4
#GIMP_AUTORECONF = YES
#GIMP_AUTORECONF_OPTS = --verbose
GIMP_DEPENDENCIES = libgtk2 librsvg_old libart xlib_libX11
GIMP_CONF_OPTS = --without-libmng --without-libexif  --without-aa --without-gtkhtml2 --disable-print --disable-python --enable-mmx=no --enable-sse=no --without-libcurl  --without-poppler
GIMP_CONF_ENV = CFLAGS="-lm -lX11"
#ABIWORD_AUTORECONF_OPTS = -fvi
#ABIWORD_CONF_OPTS = --with-opengl=no

$(eval $(autotools-package))
