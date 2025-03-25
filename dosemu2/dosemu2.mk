######################
# Dank Linux Package:
# dosemu2
######################
DOSEMU2_VERSION = 2.0pre9-2
DOSEMU2_SOURCE = dosemu2-$(DOSEMU2_VERSION).tar.gz
DOSEMU2_SITE = https://github.com/dosemu2/dosemu2/archive/refs/tags
#DOSEMU2_AUTORECONF = YES
#DOSEMU2_AUTORECONF_OPTS = -fvi -I m4 --force $(@D)
DOSEMU2_DEPENDENCIES = alsa-lib fluidsynth xlib_libX11 gpm
DOSEMU2_CONF_OPTS = --disable-fdpp --disable-cpuemu --disable-cpuemu-jit --with-target-bits-32 --with-target-cpu=i486 --disable-dnative
#DOSEMU_CONF_ENV = 
#DOSEMU_INSTALL_STAGING = YES


define DOSEMU2_AUTOGEN
	echo "Deleting aclocal.m4"
	rm -f $(@D)/aclocal.m4
	echo "Running autogen.sh"
	cd $(@D) && $(@D)/autogen.sh
endef

DOSEMU2_POST_EXTRACT_HOOKS += DOSEMU2_AUTOGEN

$(eval $(autotools-package))
