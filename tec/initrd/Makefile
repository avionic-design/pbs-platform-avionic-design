PACKAGE = tec-initrd
VERSION = 0

dirs = \
	/etc \
	/scripts \
	/scripts/persist \
	/scripts/shutdown

scripts = \
	/scripts/persist/hostname \
	/scripts/shutdown/unmount

include platforms/common.mk

quiet_cmd_edit = SED     $@
      cmd_edit = $(SED) 's|@VERSION@|$(VERSION)|' $< > $@

$(DESTDIR)/etc/os-release: $(obj)/src/etc/os-release.in $(obj)/Makefile
	$(call cmd,edit)

$(pkgtree)/.do-install: $(DESTDIR)/etc/os-release
