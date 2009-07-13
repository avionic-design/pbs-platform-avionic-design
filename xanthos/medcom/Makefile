VERSION = 0.0.0

include packages/common.mk

ARCH := $(shell echo $(CONFIG_ARCH))

dirs = \
	/dev \
	/etc/rcS.d \
	/etc/pango \
	/media/sd-card \
	/proc \
	/root \
	/sys \
	/tmp \
	/var

scripts = \
	/etc/init.d/dbus \
	/etc/init.d/hal \
	/etc/init.d/rcS \
	/etc/init.d/syslogd \
	/usr/share/udhcpc/default.script

files = \
	/etc/fstab \
	/etc/hostname \
	/etc/hosts \
	/etc/group \
	/etc/inittab \
	/etc/mdev.conf \
	/etc/passwd \
	/etc/shadow \
	/etc/sysctl.conf \
	/etc/ts.conf \
	/lib/lsb/init-functions

links = \
	/etc/rcS.d/S10syslogd \
	/etc/rcS.d/S50dbus \
	/etc/rcS.d/S51hal \
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
	$(priv) ln -sf /var/lib/resolv.conf $(DESTDIR)/etc/resolv.conf
	$(priv) ln -sf /var/lib/pointercal $(DESTDIR)/etc/pointercal
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
