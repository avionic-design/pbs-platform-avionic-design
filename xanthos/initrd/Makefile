VERSION = 0.0.0

include packages/common.mk

ARCH := $(shell echo $(CONFIG_ARCH))

scripts = \
	/init

files = \
	/etc/fstab \
	/etc/group \
	/etc/mdev.conf \
	/etc/passwd \
	/etc/shadow \
	/etc/sysctl.conf \
	/lib/lsb/init-functions

scripts := $(addprefix $(DESTDIR),$(scripts))
files := $(addprefix $(DESTDIR),$(files))

$(pkgtree)/.setup:
	$(call cmd,stamp)

$(pkgtree)/.configure:
	$(call cmd,stamp)

$(pkgtree)/.build:
	$(call cmd,stamp)

$(scripts): $(DESTDIR)%: $(obj)/src%
	$(call cmd,install_bin)

$(files): $(DESTDIR)%: $(obj)/src%
	$(call cmd,install)

$(pkgtree)/.do-install: $(pkgtree)/.build $(scripts) $(files)
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
