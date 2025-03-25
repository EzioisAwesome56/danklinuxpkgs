###########################################
# Dank Linux Package: target gcc
# why the fuck doesnt buildroot ship this
# as an option????
##########################################

#DEVICEGCC_VERSION = 12.3.0
DEVICEGCC_VERSION = $(GCC_VERSION)
#DEVICEGCC_SOURCE = gcc-$(DEVICEGCC_VERSION).tar.gz
DEVICEGCC_SOURCE = $(GCC_SOURCE)
#DEVICEGCC_SITE = https://ftp.gnu.org/gnu/gcc/gcc-$(DEVICEGCC_VERSION)
DEVICEGCC_SITE = $(GCC_SITE)
# setup install dirs
# from https://luplab.cs.ucdavis.edu/2022/01/06/buildroot-and-compiler-on-target.html
DEVICEGCC_CONF_OPTS = $(HOST_GCC_COMMON_CONF_OPTS)
DEVICEGCC_CONF_OPTS += --with-sysroot=/ --with-build-sysroot=$(STAGING_DIR) --disable-__cxa_atexit --with-gmp=$(STAGING_DIR) --with-mpc=$(STAGING_DIR) --with-mpfr=$(STAGING_DIR)
DEVICEGCC_CONF_OPTS += --disable-libquadmath --disable-libsanitizer --disable-plugin --disable-lto
DEVICEGCC_CONF_OPTS += --disable-boostrap --disable-libgomp --disable-nls --disable-libmpx --disable-gcov
# other shit from this guy's patch
DEVICEGCC_CONF_ENV = $(HOST_GCC_COMMON_CONF_ENV)
DEVICEGCC_MAKE_OPTS = $(HOST_GCC_COMMON_MAKE_OPTS)
# copies headers to target
define DEVICEGCC_INSTALL_HEADERS
	cp -r $(STAGING_DIR)/usr/include $(TARGET_DIR)/usr
endef
DEVICEGCC_POST_INSTALL_TARGET_HOOKS += DEVICEGCC_INSTALL_HEADERS
DEVICEGCC_INSTALL_LIBS = \
	libBrokenLocale.so libanl.so libbfd.so libc.so libcrypt.so libdl.so \
	libm.so libnss_compat.so libnss_db.so libnss_files.so libnss_hesiod.so \
	libpthread.so libresolv.so librt.so libthread_db.so libutil.so
define DEVICEGCC_INSTALL_LIBS
	for libpattern in $(GCC_TARGET_GLIBC_LIBS); do \
		$(call copy_toolchain_lib_root,$$libpattern) ; \
	done
	cp -dpf $(STAGING_DIR)/usr/lib/*crt*.o $(TARGET_DIR)/usr/lib/
	cp -dpf $(STAGING_DIR)/usr/lib/*_nonshared.a $(TARGET_DIR)/usr/lib/
endef
DEVICEGCC_POST_INSTALL_TARGET_HOOKS += DEVICEGCC_INSTALL_LIBS
define DEVICEGCC_RM_FILES
	rm -f $(TARGET_DIR)/usr/bin/$(ARCH)-dank-linux-gnu-gcc*
	rm -f $(TARGET_DIR)/usr/lib/libgcc_s*.so*
	rm -f $(TARGET_DIR)/usr/$(ARCH)-dank-linux-gnu/lib/ldscripts/elf32*
	rm -f $(TARGET_DIR)/usr/$(ARCH)-dank-linux-gnu/lib/ldscripts/elf64b*
endef
DEVICEGCC_POST_INSTALL_TARGET_HOOKS += DEVICEGCC_RM_FILES
# back to my own shit
DEVICEGCC_CONF_OPTS += --enable-languages=c,c++
DEVICEGCC_DEPENDENCIES = mpfr mpc gmp

# do the thing?
$(eval $(autotools-package))
