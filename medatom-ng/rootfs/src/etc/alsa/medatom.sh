#!/bin/sh -e

usage()
{
	echo "Usage: $1 {start|stop}"
}

case "$1" in
	start)
		while ! test -c /dev/i2c-1; do
			sleep 1
		done

		i2cset -y 1 0x60 1 0xd0
		i2cset -y 1 0x60 2 0x3f

		while ! test -c /dev/snd/controlC0; do
			sleep 1
		done
		;;

	stop)
		# TODO: undo the above register writes?
		;;

	*)
		usage $(basename $0)
		exit 1
		;;
esac
