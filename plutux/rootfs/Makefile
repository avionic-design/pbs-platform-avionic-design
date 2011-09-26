PACKAGE = plutux-rootfs
VERSION = 0

dirs = \
	/bin \
	/dev \
	/etc \
	/etc/X11 \
	/etc/X11/Xsession.d \
	/etc/iflinkd \
	/etc/iflinkd/hooks.d \
	/etc/systemd \
	/etc/systemd/system \
	/etc/systemd/system/basic.target.wants \
	/etc/systemd/system/local-fs.target.wants \
	/etc/systemd/system/multi-user.target.wants \
	/etc/pango \
	/etc/pam.d \
	/etc/tmpfiles.d \
	/etc/udev \
	/etc/udev/rules.d \
	/etc/xdg \
	/etc/xdg/awesome \
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
	/usr/lib \
	/usr/lib/dhcpcd \
	/usr/lib/dhcpcd/dhcpcd-hooks \
	/usr/lib/gdk-pixbuf-2.0/2.10.0 \
	/var \
	/var/lib \
	/var/lock \
	/var/log

scripts = \
	/etc/X11/Xsession \
	/etc/iflinkd/hooks.d/10-dhcpcd \
	/etc/xdg/awesome/xinitrc \
	/lib/systemd/gdk-pixbuf-loaders-cache \
	/lib/systemd/pango-modules-cache \
	/lib/systemd/update-mime-db \
	/usr/lib/dhcpcd/dhcpcd-hooks/90-ntp

files = \
	/fastboot \
	/etc/X11/Xsession.d/10-keyboard-layout \
	/etc/X11/Xsession.d/50-determine-startup \
	/etc/X11/Xsession.d/99-start \
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
	/etc/remote-control.conf \
	/etc/rsyslog.conf \
	/etc/services \
	/etc/shadow \
	/etc/sysctl.conf \
	/etc/systemd/system.conf \
	/etc/systemd/system/alsa.service \
	/etc/systemd/system/gdk-pixbuf.service \
	/etc/systemd/system/nodm.service \
	/etc/systemd/system/nvidia-resource-manager.service \
	/etc/systemd/system/openssh.service \
	/etc/systemd/system/pango.service \
	/etc/systemd/system/root.mount \
	/etc/systemd/system/tmp.mount \
	/etc/systemd/system/update-mime-db.service \
	/etc/systemd/system/var-lib.mount \
	/etc/systemd/system/var-log.mount \
	/etc/tmpfiles.d/dbus.conf \
	/etc/tmpfiles.d/ntp.conf \
	/etc/tmpfiles.d/ssh.conf \
	/etc/tmpfiles.d/systemd.conf \
	/etc/udev/rules.d/70-persistent-net.rules \
	/lib/lsb/init-functions \
	/root/.htoprc

links = \
	/bin/sh \
	/etc/X11/xorg.conf.d \
	/etc/hostname \
	/etc/machine-id \
	/etc/motd \
	/etc/mtab \
	/etc/ntp.conf \
	/etc/resolv.conf \
	/etc/ssh/ssh_host_dsa_key \
	/etc/ssh/ssh_host_dsa_key.pub \
	/etc/ssh/ssh_host_ecdsa_key \
	/etc/ssh/ssh_host_ecdsa_key.pub \
	/etc/ssh/ssh_host_key \
	/etc/ssh/ssh_host_key.pub \
	/etc/ssh/ssh_host_rsa_key \
	/etc/ssh/ssh_host_rsa_key.pub \
	/etc/systemd/system/basic.target.wants/nvidia-resource-manager.service \
	/etc/systemd/system/graphical.target.wants/gdk-pixbuf.service \
	/etc/systemd/system/graphical.target.wants/nodm.service \
	/etc/systemd/system/graphical.target.wants/pango.service \
	/etc/systemd/system/graphical.target.wants/update-mime-db.service \
	/etc/systemd/system/local-fs.target.wants/root.mount \
	/etc/systemd/system/local-fs.target.wants/tmp.mount \
	/etc/systemd/system/local-fs.target.wants/var-lib.mount \
	/etc/systemd/system/local-fs.target.wants/var-log.mount \
	/etc/systemd/system/multi-user.target.wants/network.target \
	/etc/systemd/system/multi-user.target.wants/serial-getty@ttyS0.service \
	/etc/systemd/system/multi-user.target.wants/openssh.service \
	/etc/pango/pango.modules \
	/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache \
	/var/run \
	/init \
	/sbin/halt \
	/sbin/init \
	/sbin/poweroff \
	/sbin/reboot \
	/sbin/runlevel \
	/sbin/shutdown

include include/config/auto.conf
include platforms/common.mk
