include packages/common.mk

scripts = \
	/etc/init.d/rcS

files = \
	/etc/fstab \
	/etc/group \
	/etc/inittab \
	/etc/mdev.conf \
	/etc/passwd \
	/etc/shadow \
	/etc/sysctl.conf \
	/lib/lsb/init-functions

links = \
	/init

scripts := $(addprefix $(ROOTFS),$(scripts))
files := $(addprefix $(ROOTFS),$(files))
links := $(addprefix $(ROOTFS),$(links))

$(pkgtree)/.configure:
	$(call cmd,stamp)

$(pkgtree)/.build:
	$(call cmd,stamp)

$(pkgtree)/.binary:
	@echo "$@ not implemented yet"
	$(call cmd,stamp)

$(files): $(ROOTFS)%: $(obj)/src%
	$(call cmd,install)

$(scripts): $(ROOTFS)%: $(obj)/src%
	$(call cmd,install_bin)

$(links): $(ROOTFS)%: $(obj)/src%
	$(call cmd,install_link)

$(pkgtree)/.install: $(scripts) $(files) $(links)
	$(call cmd,stamp)
