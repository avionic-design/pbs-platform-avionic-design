PACKAGE = medcom-wide-initrd
VERSION = 3

dirs = \
	/etc \
	/scripts \
	/scripts/persist

scripts = \
	/scripts/persist/hostname \
	/scripts/persist/version

include platforms/common.mk

quiet_cmd_edit = SED     $@
      cmd_edit = $(SED) 's|@VERSION@|$(VERSION)|' $< > $@

$(DESTDIR)/etc/os-release: $(obj)/src/etc/os-release.in $(obj)/Makefile
	$(call cmd,edit)

$(pkgtree)/.do-install: $(DESTDIR)/etc/os-release
