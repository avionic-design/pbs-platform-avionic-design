PWD=$(dir $(lastword $(MAKEFILE_LIST)))
-include $(PWD)../../Makefile.version

PACKAGE = medcom-wide-initrd
VERSION = $(MEDCOM_VERSION)

dirs = \
	/etc \
	/scripts \
	/scripts/persist \
	/scripts/shutdown

scripts = \
	/scripts/persist/hostname \
	/scripts/persist/version \
	/scripts/shutdown/unmount

include platforms/common.mk

quiet_cmd_edit = SED     $@
      cmd_edit = $(SED) 's|@VERSION@|$(VERSION)|' $< > $@

$(DESTDIR)/etc/os-release: $(obj)/src/etc/os-release.in $(obj)/Makefile
	$(call cmd,edit)

$(pkgtree)/.do-install: $(DESTDIR)/etc/os-release
