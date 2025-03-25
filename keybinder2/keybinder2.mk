######################
# Dank Linux Package:
# keybinder2
######################
KEYBINDER2_VERSION = 0.3.1
KEYBINDER2_SOURCE = keybinder-$(KEYBINDER2_VERSION).tar.gz
KEYBINDER2_SITE = https://src.fedoraproject.org/repo/pkgs/keybinder/keybinder-0.3.1.tar.gz/a6d7caae0dcb040b08692b008a68a507
#LIBGSF_AUTORECONF = YES
KEYBINDER2_DEPENDENCIES = libgtk2 gobject-introspection
KEYBINDER2_DEPENDENCIES += pango cairo
KEYBINDER2_CONF_OPTS += --disable-python --disable-lua
# how did i manage to forget this?
KEYBINDER2_INSTALL_STAGING = YES

$(eval $(autotools-package))
