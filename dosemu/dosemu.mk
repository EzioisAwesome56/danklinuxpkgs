######################
# Dank Linux Package:
# dosemu
######################
# based on gentoo's 1.4.1_preblahblahblah
# https://gitweb.gentoo.org/repo/gentoo.git/tree/app-emulation/dosemu/dosemu-1.4.1_pre20130107-r6.ebuild
DOSEMU_VERSION = 1.4.1_pre20130107
DOSEMU_SOURCE = dosemu-$(DOSEMU_VERSION).zip
DOSEMU_SITE = https://dev.gentoo.org/~sam/distfiles
DOSEMU_AUTORECONF = YES
DOSEMU_AUTORECONF_OPTS = -fvi
DOSEMU_DEPENDENCIES = alsa-lib fluidsynth xlib_libX11 gpm
DOSEMU_CONF_OPTS = IA16_LDFLAGS_EXTRA=-no-pie --enable-debug AR="/mnt/danklinux/buildroot-2024.02.11/output/host/bin/i486-dank-linux-gnu-ar" --without-sndfile
#DOSEMU_CONF_ENV = 
#DOSEMU_INSTALL_STAGING = YES
# it comes in a zip file, so we have to deal with that
DOSEMU_EXTRACT_CMDS = unzip $(DOSEMU_DL_DIR)/$(DOSEMU_SOURCE) -d $(@D)

# too lazy to figure out how to use the unzip command,
# so this will suffice for now
define DOSEMU_FIX_STRUCTURE
	echo "Moving contents of abiword folder to root build dir..."
	mv $(@D)/dosemu-code-15cfb41ff20a052769d753c3262c57ecb050ad71/* $(@D)/
endef

DOSEMU_POST_EXTRACT_HOOKS += DOSEMU_FIX_STRUCTURE

$(eval $(autotools-package))
