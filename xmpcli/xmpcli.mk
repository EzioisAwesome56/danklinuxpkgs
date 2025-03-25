######################
# Dank Linux Package:
# xmpcli mod player
######################
XMPCLI_VERSION = 4.2.0
XMPCLI_SOURCE = xmp-$(XMPCLI_VERSION).tar.gz
XMPCLI_SITE = https://github.com/libxmp/xmp-cli/releases/download/xmp-$(XMPCLI_VERSION)
XMPCLI_DEPENDENCIES = libxmp

$(eval $(autotools-package))
