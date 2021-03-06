PWD=$(dir $(lastword $(MAKEFILE_LIST)))
-include $(PWD)../../Makefile.version

PACKAGE = medatom-ng-rootfs
VERSION = $(MEDCOM_VERSION)
NAME = Claudius
DATE = $(shell date +%d.%m.%Y)

dirs = \
	/bin \
	/debug \
	/dev \
	/etc \
	/etc/adobe \
	/etc/alsa \
	/etc/default \
	/etc/gtk-2.0 \
	/etc/gtk-3.0 \
	/etc/iflinkd \
	/etc/iflinkd/hooks.d \
	/etc/iflinkd/hooks.d/eth0 \
	/etc/iflinkd/hooks.d/lo \
	/etc/logrotate.d \
	/etc/modprobe.d \
	/etc/modules-load.d \
	/etc/network \
	/etc/network/if-down.d \
	/etc/network/if-post-down.d \
	/etc/network/if-pre-up.d \
	/etc/network/if-up.d \
	/etc/pam.d \
	/etc/pango \
	/etc/pki \
	/etc/pki/tls \
	/etc/pki/tls/cert \
	/etc/remote-control.conf.d \
	/etc/remote-control.conf.d/medatom-wide \
	/etc/rsyslog.d \
	/etc/ssh \
	/etc/systemd \
	/etc/systemd/system \
	/etc/systemd/system/local-fs.target.wants \
	/etc/systemd/system/graphical.target.wants \
	/etc/systemd/system/multi-user.target.wants \
	/etc/systemd/system/network.target.wants \
	/etc/systemd/system/sockets.target.wants \
	/etc/tmpfiles.d \
	/etc/udev \
	/etc/udev/rules.d \
	/etc/X11 \
	/etc/X11/xorg.conf.d \
	/etc/X11/Xsession.d \
	/etc/xdg \
	/etc/xdg/awesome \
	/etc/xdg/menus \
	/etc/xdg/xfce4 \
	/etc/xdg/xfce4/xfconf \
	/etc/xdg/xfce4/xfconf/xfce-perchannel-xml \
	/media \
	/media/disk \
	/mnt \
	/persist \
	/proc \
	/root \
	/run \
	/sbin \
	/sys \
	/tmp \
	/usr \
	/usr/bin \
	/usr/lib \
	/usr/lib/dhcpcd \
	/usr/lib/dhcpcd/dhcpcd-hooks \
	/usr/lib/firmware \
	/usr/lib/firmware/edid \
	/usr/lib/gdk-pixbuf-2.0 \
	/usr/lib/gdk-pixbuf-2.0/2.10.0 \
	/usr/lib/lsb \
	/usr/sbin \
	/usr/share \
	/usr/share/applications \
	/usr/share/icons \
	/usr/share/icons/default \
	/var \
	/var/lib \
	/var/log \
	/var/spool \
	/var/tmp

scripts = \
	/etc/alsa/medatom.sh \
	/etc/alsa/medatom-wide.sh \
	/etc/iflinkd/hooks.d/eth0/50-dhcpcd \
	/etc/iflinkd/hooks.d/eth0/00-lldpd \
	/etc/X11/Xsession \
	/etc/xdg/awesome/xinitrc \
	/usr/bin/ntpdate-wrapper \
	/usr/lib/dhcpcd/dhcpcd-hooks/90-ntp \
	/usr/lib/dhcpcd/dhcpcd-hooks/91-ddip-announce \
	/usr/lib/systemd/gdk-pixbuf-loaders-cache \
	/usr/lib/systemd/update-crontab \
	/usr/lib/systemd/usb-power \
	/usr/sbin/sshd-keygen \
	/usr/share/udhcpc/default.script

files = \
	/etc/adobe/mms.cfg \
	/etc/asound.conf \
	/etc/asound.state \
	/etc/alsa/medatom.conf \
	/etc/alsa/medatom.state \
	/etc/alsa/medatom-wide.conf \
	/etc/alsa/medatom-wide.state \
	/etc/crontab \
	/etc/default/locale \
	/etc/default/lldpd \
	/etc/environment \
	/etc/fstab \
	/etc/group \
	/etc/gtk-2.0/gtkrc \
	/etc/gtk-3.0/settings.ini \
	/etc/hosts \
	/etc/inittab \
	/etc/issue \
	/etc/linphone.conf \
	/etc/lldpd.conf \
	/etc/locale.conf \
	/etc/localtime \
	/etc/logrotate.conf \
	/etc/logrotate.d/remote-control \
	/etc/logrotate.d/syslog \
	/etc/modprobe.d/blacklist.conf \
	/etc/modprobe.d/sound.conf \
	/etc/modprobe.d/v4l.conf \
	/etc/modules \
	/etc/modules-load.d/cpufreq.conf \
	/etc/modules-load.d/input.conf \
	/etc/modules-load.d/misc.conf \
	/etc/modules-load.d/networking.conf \
	/etc/motd \
	/etc/network/interfaces \
	/etc/nsswitch.conf \
	/etc/pam.conf \
	/etc/pam.d/common-account \
	/etc/pam.d/common-auth \
	/etc/pam.d/common-password \
	/etc/pam.d/common-session \
	/etc/pam.d/nodm \
	/etc/pam.d/other \
	/etc/passwd \
	/etc/profile \
	/etc/remote-control.conf.d/linphone.conf \
	/etc/remote-control.conf.d/logging.conf \
	/etc/remote-control.conf.d/medatom-wide/smartcard.conf \
	/etc/rsyslog.conf \
	/etc/rsyslog.d/50-remote-control.conf \
	/etc/rsyslog.d/99-persist.conf \
	/etc/services \
	/etc/shadow \
	/etc/ssh/sshd_config \
	/etc/sysctl.conf \
	/etc/systemd/journald.conf \
	/etc/systemd/system.conf \
	/etc/systemd/system/cpu_governor.service \
	/etc/systemd/system/crond.service \
	/etc/systemd/system/gdk-pixbuf.service \
	/etc/systemd/system/iflinkd@eth0.service \
	/etc/systemd/system/iflinkd@lo.service \
	/etc/systemd/system/nodm.service \
	/etc/systemd/system/ntpd.service \
	/etc/systemd/system/ntpdate.service \
	/etc/systemd/system/openssh.service \
	/etc/systemd/system/usb-power.service \
	/etc/systemd/system/root.mount \
	/etc/systemd/system/tmp.mount \
	/etc/systemd/system/update-crontab.service \
	/etc/systemd/system/var-lib.mount \
	/etc/systemd/system/var-log.mount \
	/etc/systemd/system/var-spool.mount \
	/etc/systemd/system/var-tmp.mount \
	/etc/systemd/system/watchdog.service \
	/etc/tmpfiles.d/console-kit.conf \
	/etc/tmpfiles.d/dbus.conf \
	/etc/tmpfiles.d/dhcpcd.conf \
	/etc/tmpfiles.d/hosts.conf \
	/etc/tmpfiles.d/lldpd.conf \
	/etc/tmpfiles.d/ntp.conf \
	/etc/tmpfiles.d/ssh.conf \
	/etc/tmpfiles.d/systemd.conf \
	/etc/udev/rules.d/80-net-name-slot.rules \
	/etc/vconsole.conf \
	/etc/X11/xorg.conf.d/10-evdev.conf \
	/etc/X11/xorg.conf.d/20-keyboard-layout.conf \
	/etc/X11/xorg.conf.d/95-sharp-touch.conf \
	/etc/X11/xorg.conf.d/96-egalax-touch.conf \
	/etc/X11/xorg.conf.d/98-dpms.conf \
	/etc/X11/xorg.conf.d/99-intel.conf \
	/etc/X11/Xsession.d/00-persist \
	/etc/X11/Xsession.d/20-detect-restart-reason \
	/etc/X11/Xsession.d/50-determine-startup \
	/etc/X11/Xsession.d/90-calibrate \
	/etc/X11/Xsession.d/99-start \
	/etc/xdg/menus/applications.menu \
	/etc/xdg/xfce4/helpers.rc \
	/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml \
	/fastboot \
	/usr/lib/firmware/hda-patch.fw \
	/usr/lib/firmware/v4l-cx231xx-avcore-01.fw \
	/usr/lib/firmware/xc3028L-v36.fw \
	/usr/lib/firmware/edid/chimei-1366-768.bin \
	/usr/lib/lsb/init-functions \
	/usr/share/alsa/ucm/HDA_Intel_PCH/HDA_Intel_PCH.conf \
	/usr/share/alsa/ucm/HDA_Intel_PCH/hifi.conf \
	/usr/share/alsa/ucm/HDA_Intel_PCH/linein.conf \
	/usr/share/alsa/ucm/HDA_Intel_PCH/voice-call.conf \
	/usr/share/alsa/ucm/HDA_Intel_PCH/voice-call-ip.conf \
	/usr/share/applications/xterm.desktop \
	/usr/share/vim/vimrc

links = \
	/bin/sh \
	/etc/browser.conf \
	/etc/dhcpcd.duid \
	/etc/machine-id \
	/etc/mtab \
	/etc/pki/tls/certs/ca-bundle.crt \
	/etc/hostname \
	/etc/lldpd.d \
	/etc/ntp.conf \
	/etc/proxy.conf \
	/etc/remote-control.conf \
	/etc/resolv.conf \
	/etc/systemd/system/display-manager.service \
	/etc/systemd/system/graphical.target.wants/gdk-pixbuf.service \
	/etc/systemd/system/local-fs.target.wants/root.mount \
	/etc/systemd/system/local-fs.target.wants/tmp.mount \
	/etc/systemd/system/local-fs.target.wants/var-lib.mount \
	/etc/systemd/system/local-fs.target.wants/var-log.mount \
	/etc/systemd/system/local-fs.target.wants/var-spool.mount \
	/etc/systemd/system/local-fs.target.wants/var-tmp.mount \
	/etc/systemd/system/network.target.wants/iflinkd@eth0.service \
	/etc/systemd/system/network.target.wants/iflinkd@lo.service \
	/etc/systemd/system/network.target.wants/ntpd.service \
	/etc/systemd/system/network.target.wants/ntpdate.service \
	/etc/systemd/system/multi-user.target.wants/cpu_governor.service \
	/etc/systemd/system/multi-user.target.wants/crond.service \
	/etc/systemd/system/multi-user.target.wants/network.target \
	/etc/systemd/system/multi-user.target.wants/openssh.service \
	/etc/systemd/system/multi-user.target.wants/pcscd.service \
	/etc/systemd/system/multi-user.target.wants/update-crontab.service \
	/etc/systemd/system/multi-user.target.wants/usb-power.service \
	/etc/systemd/system/multi-user.target.wants/watchdog.service \
	/etc/systemd/system/proc-sys-fs-binfmt_misc.automount \
	/etc/systemd/system/proc-sys-fs-binfmt_misc.mount \
	/etc/systemd/system/sockets.target.wants/pcscd.socket \
	/etc/systemd/system/ldconfig.service \
	/etc/systemd/system/syslog.service \
	/etc/systemd/system/systemd-networkd.service \
	/etc/systemd/system/systemd-networkd.socket \
	/etc/systemd/system/systemd-resolved.service \
	/etc/systemd/system/systemd-timesyncd.service \
	/etc/tmpfiles.d/etc.conf \
	/etc/tmpfiles.d/legacy.conf \
	/etc/tmpfiles.d/home.conf \
	/etc/tmpfiles.d/var.conf \
	/etc/udev/rules.d/80-net-setup-link.rules \
	/etc/X11/xorg.conf.d/99-calibration.conf \
	/etc/X11/xorg.conf.d/99-undefined.conf \
	/etc/xdg/menus/xfce-applications.menu \
	/sbin/getty \
	/sbin/init \
	/sbin/reboot \
	/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache \
	/usr/share/icons/default/index.theme \
	/var/lock \
	/var/run

include platforms/common.mk

quiet_cmd_edit = SED     $@
      cmd_edit = $(SED) \
	's|@VERSION@|$(VERSION)|;s|@DATE@|$(DATE)|;s|@NAME@|$(NAME)|' $< > $@

$(DESTDIR)/etc/os-release: $(obj)/src/etc/os-release.in $(obj)/Makefile
	$(call cmd,edit)

$(pkgtree)/.do-install: $(DESTDIR)/etc/os-release
