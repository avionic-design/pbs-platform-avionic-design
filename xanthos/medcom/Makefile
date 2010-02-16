VERSION = 0.0.0

include packages/common.mk

dirs = \
	/dev \
	/etc \
	/etc/rcS.d \
	/etc/network \
	/etc/network/if-down.d \
	/etc/network/if-pre-up.d \
	/etc/network/if-post-down.d \
	/etc/network/if-up.d \
	/etc/pango \
	/etc/snmp \
	/media \
	/media/sd-card \
	/proc \
	/root \
	/sys \
	/tmp \
	/var \
	/var/run \
	/var/run/lldpd

scripts = \
	/etc/init.d/bluetooth \
	/etc/init.d/dbus \
	/etc/init.d/hal \
	/etc/init.d/lldpd \
	/etc/init.d/networking \
	/etc/init.d/rcS \
	/etc/init.d/snmpd \
	/etc/init.d/syslogd \
	/usr/share/udhcpc/default.script

files = \
	/etc/bluetooth/audio.conf \
	/etc/bluetooth/input.conf \
	/etc/bluetooth/network.conf \
	/etc/fstab \
	/etc/hostname \
	/etc/hosts \
	/etc/group \
	/etc/inittab \
	/etc/mdev.conf \
	/etc/network/interfaces \
	/etc/nsswitch.conf \
	/etc/passwd \
	/etc/shadow \
	/etc/snmp/snmpd.conf \
	/etc/sysctl.conf \
	/etc/ts.conf \
	/lib/lsb/init-functions

links = \
	/etc/mtab \
	/etc/pointercal \
	/etc/rcS.d/S10syslogd \
	/etc/rcS.d/S25networking \
	/etc/rcS.d/S40snmpd \
	/etc/rcS.d/S41lldpd \
	/etc/resolv.conf \
	/init
#	/etc/rcS.d/S50dbus \
#	/etc/rcS.d/S51hal \

include platforms/common.mk
