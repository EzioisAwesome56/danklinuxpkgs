######################
# Dank Linux Package:
# goffice
######################
GOFFICE_VERSION = 0.8.17
GOFFICE_SOURCE = goffice-$(GOFFICE_VERSION).tar.xz
GOFFICE_SITE = https://download.gnome.org/sources/goffice/0.8
GOFFICE_AUTORECONF = YES
GOFFICE_DEPENDENCIES = libgtk2 pcre libgsf
GOFFICE_INSTALL_STAGING = YES
#GOFFICE_CONF_OPTS =
#ABIWORD_CONF_OPTS += --enable-clipart --enable-templates
#ABIWORD_AUTORECONF_OPTS = -fvi
#ABIWORD_CONF_OPTS = --with-opengl=no

$(eval $(autotools-package))
