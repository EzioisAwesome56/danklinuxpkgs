######################
# Dank Linux Package:
# wv 
######################
WV_VERSION = 1.2.9
WV_SOURCE = wv-$(WV_VERSION).tar.gz
WV_SITE = https://anduin.linuxfromscratch.org/BLFS/wv
#WV_AUTORECONF = YES
WV_INSTALL_STAGING = YES
WV_DEPENDENCIES = libgsf
#ABIWORD_CONF_OPTS = --with-opengl=no
$(eval $(autotools-package))
