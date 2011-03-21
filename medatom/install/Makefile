PACKAGE = medatom-install
VERSION = 0.0.0

dirs = \
	/etc \
	/etc/init.d \
	/lib \
	/mnt \
	/mnt/install \
	/mnt/target \
	/tmp \
	/usr \
	/usr/share \
	/usr/share/udhcpc

scripts = \
	/etc/init.d/rcS \
	/init \
	/usr/share/udhcpc/default.script

files = \
	/etc/fstab \
	/etc/group \
	/etc/inittab \
	/etc/mdev.conf \
	/etc/passwd \
	/etc/shadow \
	/etc/sysctl.conf \
	/lib/lsb/init-functions

include platforms/common.mk

quiet_cmd_edit = SED     $@
      cmd_edit = $(SED) 's|@VERSION@|$(VERSION)|' $< > $@

$(DESTDIR)/etc/os-release: $(obj)/src/etc/os-release.in $(obj)/Makefile
	$(call cmd,edit)

$(pkgtree)/.do-install: $(DESTDIR)/etc/os-release
