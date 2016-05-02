PACKAGE = medcom-wide-setup
VERSION = 9.4.0

dirs = \
	/bin \
	/etc \
	/scripts \
	/scripts/shutdown \
	/tmp

files = \
	/etc/inittab \
	/etc/passwd

scripts = \
	/init \
	/scripts/shutdown/unmount

links = \
	/bin/echo

include platforms/common.mk

quiet_cmd_edit = SED     $@
      cmd_edit = $(SED) 's|@VERSION@|$(VERSION)|' $< > $@

$(DESTDIR)/etc/os-release: $(obj)/src/etc/os-release.in $(obj)/Makefile
	$(call cmd,edit)

$(pkgtree)/.do-install: $(DESTDIR)/etc/os-release
