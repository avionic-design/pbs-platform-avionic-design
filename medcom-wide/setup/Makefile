PWD=$(dir $(lastword $(MAKEFILE_LIST)))
-include $(PWD)../../Makefile.version

PACKAGE = medcom-wide-setup
VERSION = $(MEDCOM_VERSION)

dirs = \
	/bin \
	/etc \
	/scripts \
	/scripts/shutdown \
	/tmp \
	/usr \
	/usr/bin

files = \
	/etc/inittab \
	/etc/passwd

scripts = \
	/init \
	/scripts/shutdown/unmount \
	/usr/bin/make-sdcard

links = \
	/bin/echo

include platforms/common.mk

quiet_cmd_edit = SED     $@
      cmd_edit = $(SED) 's|@VERSION@|$(VERSION)|' $< > $@

$(DESTDIR)/etc/os-release: $(obj)/src/etc/os-release.in $(obj)/Makefile
	$(call cmd,edit)

$(pkgtree)/.do-install: $(DESTDIR)/etc/os-release
