VERSION = 0.0.0

include packages/common.mk

ARCH := $(shell echo $(CONFIG_ARCH))

scripts = \
	/etc/init.d/rcS \
	/usr/share/udhcpc/default.script

files = \
	/etc/fstab \
	/etc/group \
	/etc/inittab \
	/etc/mdev.conf \
	/etc/passwd \
	/etc/shadow \
	/etc/sysctl.conf \
	/etc/ts.conf \
	/lib/lsb/init-functions

links = \
	/init

scripts := $(addprefix $(DESTDIR),$(scripts))
files := $(addprefix $(DESTDIR),$(files))
links := $(addprefix $(DESTDIR),$(links))

$(pkgtree)/.setup:
	$(call cmd,stamp)

$(pkgtree)/.configure:
	$(call cmd,stamp)

$(pkgtree)/.build:
	$(call cmd,stamp)

$(files): $(DESTDIR)%: $(obj)/src%
	$(call cmd,install)

$(scripts): $(DESTDIR)%: $(obj)/src%
	$(call cmd,install_bin)

$(links): $(DESTDIR)%: $(obj)/src%
	$(call cmd,install_link)

$(pkgtree)/.do-install: $(pkgtree)/.build $(scripts) $(files) $(links)
	$(call cmd,stamp)

$(pkgtree)/.binary: $(pkgtree)/.do-install
	cd $(pkgsrctree) && \
		$(priv) $(srctree)/scripts/pbs-install \
			-a $(ARCH) -s $(DESTDIR)
	cd $(pkgsrctree) && \
		$(priv) $(srctree)/scripts/pbs-binary \
			-a $(ARCH) -v $(VERSION)
	$(call cmd,stamp)

$(pkgtree)/.install: $(pkgtree)/.binary
	cd $(pkgsrctree) && \
		$(priv) $(srctree)/scripts/pbs-extract \
			-a $(ARCH) -v $(VERSION) -r $(ROOTFS)
	$(call cmd,stamp)
