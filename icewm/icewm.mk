######################
# Dank Linux Package:
# IceWM Window Manager
######################
ICEWM_VERSION = 3.7.2
ICEWM_SOURCE = icewm-$(ICEWM_VERSION).tar.lz
ICEWM_SITE = https://github.com/ice-wm/icewm/releases/download/$(ICEWM_VERSION)
ICEWM_DEPENDENCIES = imlib2 xlib_libXcomposite xlib_libXdamage xlib_libXfixes xlib_libXft xlib_libXinerama xlib_libXpm xlib_libXrandr xlib_libXrender

#$(eval $(autotools-package))
$(eval $(cmake-package))
