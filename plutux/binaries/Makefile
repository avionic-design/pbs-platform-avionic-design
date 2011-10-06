PACKAGE = harmony
VERSION = 19.0026

LOCATION = http://ftp.avionic-design.de/pub/$(PACKAGE)
TARBALLS = $(PACKAGE)-$(VERSION).tar.bz2

include packages/common.mk

$(pkgtree)/.setup:
	$(call cmd,stamp)

$(pkgtree)/.configure: $(pkgtree)/.patch
	$(call cmd,stamp)

$(pkgtree)/.build: $(pkgtree)/.configure
	$(call cmd,stamp)

$(pkgtree)/.do-install: $(pkgtree)/.build
	$(priv) mkdir -p $(DESTDIR) && \
		$(priv) cp -R $(pkgtree)/$(PACKAGE)-$(VERSION)/* $(DESTDIR) && \
		$(priv) mv $(DESTDIR)/sbin $(DESTDIR)$(prefix)
	$(call cmd,stamp)

include packages/cleanup.mk
include packages/binary.mk
