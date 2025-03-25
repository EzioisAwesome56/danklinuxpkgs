###########################################
# Dank Linux Package: libxmp
##########################################

LIBXMP_VERSION = 4.6.2
LIBXMP_SOURCE = libxmp-$(LIBXMP_VERSION).tar.gz
LIBXMP_SITE = https://github.com/libxmp/libxmp/releases/download/libxmp-$(LIBXMP_VERSION)
# setup install dirs
LIBXMP_INSTALL_STAGING = YES
LIBXMP_CONF_OPS = -DBUILD_STATIC=OFF -DBUILD_SHARED=ON

# do the thing?
$(eval $(cmake-package))
