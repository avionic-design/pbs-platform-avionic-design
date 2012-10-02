PACKAGE = tec-rootfs
VERSION = 0

dirs = \
	/bin \
	/dev \
	/etc \
	/etc/iflinkd \
	/etc/iflinkd/hooks.d \
	/etc/systemd \
	/etc/systemd/system \
	/etc/systemd/system/basic.target.wants \
	/etc/systemd/system/local-fs.target.wants \
	/etc/systemd/system/multi-user.target.wants \
	/etc/pam.d \
	/etc/tmpfiles.d \
	/etc/udev \
	/etc/udev/rules.d \
	/lib \
	/media \
	/media/disk \
	/persist \
	/proc \
	/root \
	/run \
	/sbin \
	/sys \
	/tmp \
	/usr \
	/var \
	/var/lib \
	/var/lock \
	/var/log

scripts = \
	/etc/iflinkd/hooks.d/10-dhcpcd

files = \
	/etc/fstab \
	/etc/group \
	/etc/hosts \
	/etc/inittab \
	/etc/nsswitch.conf \
	/etc/passwd \
	/etc/pam.conf \
	/etc/pam.d/common-account \
	/etc/pam.d/common-auth \
	/etc/pam.d/common-password \
	/etc/pam.d/common-session \
	/etc/pam.d/nodm \
	/etc/pam.d/other \
	/etc/profile \
	/etc/rsyslog.conf \
	/etc/shadow \
	/etc/sysctl.conf \
	/etc/systemd/system.conf \
	/etc/systemd/system/openssh.service \
	/etc/systemd/system/root.mount \
	/etc/systemd/system/tmp.mount \
	/etc/systemd/system/var-lib.mount \
	/etc/systemd/system/var-log.mount \
	/etc/tmpfiles.d/dbus.conf \
	/etc/tmpfiles.d/ssh.conf \
	/etc/tmpfiles.d/systemd.conf \
	/lib/lsb/init-functions

links = \
	/bin/sh \
	/etc/hostname \
	/etc/machine-id \
	/etc/motd \
	/etc/mtab \
	/etc/resolv.conf \
	/etc/ssh/ssh_host_dsa_key \
	/etc/ssh/ssh_host_dsa_key.pub \
	/etc/ssh/ssh_host_ecdsa_key \
	/etc/ssh/ssh_host_ecdsa_key.pub \
	/etc/ssh/ssh_host_key \
	/etc/ssh/ssh_host_key.pub \
	/etc/ssh/ssh_host_rsa_key \
	/etc/ssh/ssh_host_rsa_key.pub \
	/etc/systemd/system/local-fs.target.wants/root.mount \
	/etc/systemd/system/local-fs.target.wants/tmp.mount \
	/etc/systemd/system/local-fs.target.wants/var-lib.mount \
	/etc/systemd/system/local-fs.target.wants/var-log.mount \
	/etc/systemd/system/multi-user.target.wants/iflinkd.service \
	/etc/systemd/system/multi-user.target.wants/serial-getty@ttyS0.service \
	/etc/systemd/system/multi-user.target.wants/openssh.service \
	/var/run \
	/sbin/init

include include/config/auto.conf
include platforms/common.mk

quiet_cmd_edit = SED     $@
      cmd_edit = $(SED) 's|@VERSION@|$(VERSION)|' $< > $@

$(DESTDIR)/etc/os-release: $(obj)/src/etc/os-release.in $(obj)/Makefile
	$(call cmd,edit)

$(pkgtree)/.do-install: $(DESTDIR)/etc/os-release
