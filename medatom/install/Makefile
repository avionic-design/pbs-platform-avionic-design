PWD=$(dir $(lastword $(MAKEFILE_LIST)))
-include $(PWD)../../Makefile.version

PACKAGE = medatom-install
VERSION = $(MEDCOM_VERSION)

dirs = \
	/etc \
	/etc/init.d \
	/etc/modprobe.d \
	/lib \
	/lib/firmware \
	/lib/firmware/edid \
	/lib/lsb \
	/mnt \
	/mnt/install \
	/mnt/target \
	/tmp \
	/usr \
	/usr/share \
	/usr/share/udhcpc

scripts = \
	/etc/init.d/rcS \
	/usr/share/udhcpc/default.script

files = \
	/etc/fstab \
	/etc/group \
	/etc/inittab \
	/etc/mdev.conf \
	/etc/modprobe.d/blacklist.conf \
	/etc/passwd \
	/etc/shadow \
	/etc/sysctl.conf \
	/lib/firmware/edid/chimei-1366-768.bin \
	/lib/lsb/init-functions

include platforms/common.mk

quiet_cmd_edit = SED     $@
      cmd_edit = $(SED) 's|@VERSION@|$(VERSION)|' $< > $@

$(DESTDIR)/etc/os-release: $(obj)/src/etc/os-release.in $(obj)/Makefile
	$(call cmd,edit)

$(pkgtree)/.do-install: $(DESTDIR)/etc/os-release
