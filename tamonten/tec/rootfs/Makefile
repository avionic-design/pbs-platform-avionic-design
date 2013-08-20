PACKAGE = tec-rootfs
VERSION = 0

dirs = \
	/bin \
	/dev \
	/etc \
	/etc/iflinkd \
	/etc/iflinkd/hooks.d \
	/etc/iflinkd/hooks.d/eth0 \
	/etc/logrotate.d \
	/etc/modprobe.d \
	/etc/systemd \
	/etc/systemd/system \
	/etc/systemd/system/basic.target.wants \
	/etc/systemd/system/graphical.target.wants \
	/etc/systemd/system/local-fs.target.wants \
	/etc/systemd/system/multi-user.target.wants \
	/etc/pam.d \
	/etc/pango \
	/etc/tmpfiles.d \
	/etc/udev \
	/etc/udev/rules.d \
	/etc/X11 \
	/etc/X11/xorg.conf.d \
	/etc/X11/Xsession.d \
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
	/usr/lib \
	/usr/lib/gdk-pixbuf-2.0 \
	/usr/lib/gdk-pixbuf-2.0/2.10.0 \
	/usr/lib/systemd \
	/var \
	/var/lib \
	/var/lock \
	/var/log

scripts = \
	/etc/iflinkd/hooks.d/eth0/50-dhcpcd \
	/etc/X11/Xsession \
	/etc/X11/Xsession.d/00-persist \
	/etc/X11/Xsession.d/10-keyboard-layout \
	/etc/X11/Xsession.d/50-determine-startup \
	/etc/X11/Xsession.d/99-start \
	/usr/lib/systemd/gdk-pixbuf-loaders-cache \
	/usr/lib/systemd/pango-modules-cache \
	/usr/lib/systemd/update-mime-db

files = \
	/etc/fstab \
	/etc/group \
	/etc/hosts \
	/etc/localtime \
	/etc/logrotate.conf \
	/etc/logrotate.d/general.conf \
	/etc/modprobe.d/blacklist.conf \
	/etc/nsswitch.conf \
	/etc/ntp.conf \
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
	/etc/services \
	/etc/shadow \
	/etc/sysctl.conf \
	/etc/systemd/journald.conf \
	/etc/systemd/system.conf \
	/etc/systemd/system/gdk-pixbuf.service \
	/etc/systemd/system/iflinkd@eth0.service \
	/etc/systemd/system/iflinkd@lo.service \
	/etc/systemd/system/logrotate.service \
	/etc/systemd/system/logrotate.timer \
	/etc/systemd/system/nodm.service \
	/etc/systemd/system/openssh.service \
	/etc/systemd/system/pango.service \
	/etc/systemd/system/root.mount \
	/etc/systemd/system/tmp.mount \
	/etc/systemd/system/update-mime-db.service \
	/etc/systemd/system/var-lib.mount \
	/etc/systemd/system/var-log.mount \
	/etc/tmpfiles.d/dbus.conf \
	/etc/tmpfiles.d/ssh.conf \
	/etc/tmpfiles.d/systemd.conf \
	/etc/X11/xorg.conf.d/05-evdev.conf \
	/usr/lib/lsb/init-functions

links = \
	/bin/sh \
	/etc/hostname \
	/etc/machine-id \
	/etc/motd \
	/etc/mtab \
	/etc/pango/pango.modules \
	/etc/resolv.conf \
	/etc/ssh/ssh_host_dsa_key \
	/etc/ssh/ssh_host_dsa_key.pub \
	/etc/ssh/ssh_host_ecdsa_key \
	/etc/ssh/ssh_host_ecdsa_key.pub \
	/etc/ssh/ssh_host_key \
	/etc/ssh/ssh_host_key.pub \
	/etc/ssh/ssh_host_rsa_key \
	/etc/ssh/ssh_host_rsa_key.pub \
	/etc/systemd/system/basic.target.wants/logrotate.timer \
	/etc/systemd/system/graphical.target.wants/gdk-pixbuf.service \
	/etc/systemd/system/graphical.target.wants/pango.service \
	/etc/systemd/system/graphical.target.wants/update-mime-db.service \
	/etc/systemd/system/local-fs.target.wants/root.mount \
	/etc/systemd/system/local-fs.target.wants/tmp.mount \
	/etc/systemd/system/local-fs.target.wants/var-lib.mount \
	/etc/systemd/system/local-fs.target.wants/var-log.mount \
	/etc/systemd/system/multi-user.target.wants/serial-getty@ttyS0.service \
	/etc/systemd/system/multi-user.target.wants/openssh.service \
	/etc/systemd/system/multi-user.target.wants/network.target \
	/etc/systemd/system/network.target.wants/iflinkd@eth0.service \
	/etc/systemd/system/network.target.wants/iflinkd@lo.service \
	/etc/systemd/system/display-manager.service \
	/etc/systemd/system/syslog.service \
	/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache \
	/var/run \
	/sbin/init

include include/config/auto.conf
include platforms/common.mk

quiet_cmd_edit = SED     $@
      cmd_edit = $(SED) 's|@VERSION@|$(VERSION)|' $< > $@

$(DESTDIR)/etc/os-release: $(obj)/src/etc/os-release.in $(obj)/Makefile
	$(call cmd,edit)

$(pkgtree)/.do-install: $(DESTDIR)/etc/os-release
