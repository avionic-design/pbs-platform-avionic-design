VERSION = 0.0.0

include packages/common.mk

ARCH := $(shell echo $(CONFIG_ARCH))
LIBC := $(shell echo $(CONFIG_LIBC))

dirs = \
	/dev \
	/etc/default \
	/etc/init.d \
	/etc/network \
	/etc/rcS.d \
	/etc/X11 \
	/media \
	/media/disk \
	/proc \
	/root \
	/sys \
	/tmp \
	/var

scripts = \
	/etc/init.d/dbus \
	/etc/init.d/hal \
	/etc/init.d/modules \
	/etc/init.d/rcS \
	/etc/init.d/syslogd \
	/usr/share/udhcpc/default.script

files = \
	/etc/default/rcS \
	/etc/fstab \
	/etc/group \
	/etc/hostname \
	/etc/hosts \
	/etc/inittab \
	/etc/modules \
	/etc/network/interfaces \
	/etc/passwd \
	/etc/profile \
	/etc/shadow \
	/etc/sysctl.conf \
	/etc/X11/xorg.conf \
	/lib/lsb/init-functions

links = \
	/etc/rcS.d/05-syslogd \
	/etc/rcS.d/10-modules \
	/etc/rcS.d/50-dbus \
	/etc/rcS.d/51-hal \
	/etc/resolv.conf \
	/init

dirs := $(addprefix $(DESTDIR),$(dirs))
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

quiet_cmd_priv_mkdir_p = MKDIR   $*
      cmd_priv_mkdir_p = $(priv) mkdir -p $@

$(dirs): $(DESTDIR)%:
	$(call cmd,priv_mkdir_p)

$(scripts): $(DESTDIR)%: $(obj)/src%
	$(call cmd,install_bin)

$(links): $(DESTDIR)%: $(obj)/src%
	$(call cmd,install_link)

$(pkgtree)/.do-install: $(pkgtree)/.build $(dirs) $(scripts) $(files) $(links)
	$(call cmd,stamp)

$(pkgtree)/.binary: $(pkgtree)/.do-install
	cd $(pkgsrctree) && \
		$(priv) $(srctree)/scripts/pbs-install \
			-a $(ARCH) -l $(LIBC) -s $(DESTDIR)
	cd $(pkgsrctree) && \
		$(priv) $(srctree)/scripts/pbs-binary \
			-a $(ARCH) -l $(LIBC) -v $(VERSION)
	$(call cmd,stamp)

$(pkgtree)/.install: $(pkgtree)/.binary
	cd $(pkgsrctree) && \
		$(priv) $(srctree)/scripts/pbs-extract \
			-a $(ARCH) -l $(LIBC) -v $(VERSION) -r $(ROOTFS)
	$(call cmd,stamp)
