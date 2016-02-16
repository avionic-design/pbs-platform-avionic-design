PACKAGE = medatom-initrd
VERSION = 9.4.0

dirs = \
	/etc \
	/scripts \
	/scripts/shutdown \
	/lib \
	/lib/firmware \
	/lib/firmware/edid

scripts = \
	/scripts/shutdown/00-unmount \
	/scripts/shutdown/99-reset

files = \
	/lib/firmware/edid/chimei-1366-768.bin

include platforms/common.mk

quiet_cmd_edit = SED     $@
      cmd_edit = $(SED) 's|@VERSION@|$(VERSION)|' $< > $@

$(DESTDIR)/etc/os-release: $(obj)/src/etc/os-release.in $(obj)/Makefile
	$(call cmd,edit)

$(pkgtree)/.do-install: $(DESTDIR)/etc/os-release
