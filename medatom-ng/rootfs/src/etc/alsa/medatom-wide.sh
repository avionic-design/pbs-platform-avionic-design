#!/bin/sh -e

usage()
{
	echo "Usage: $1 {start|stop}"
}

case "$1" in
	start)
		while ! test -c /dev/snd/controlC0; do
			sleep 1
		done
		;;

	stop)
		;;

	*)
		usage $(basename $0)
		exit 1
		;;
esac
