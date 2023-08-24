#!/usr/bin/env bash

DESTDIR=""
PREFIX="/usr"
MANDIR="${PREFIX}/share/man"

case $1 in
	install)
		mkdir -p ${DESTDIR}${PREFIX}/bin
		mkdir -p ${DESTDIR}${MANDIR}/man1
		cp neofetch ${DESTDIR}${PREFIX}/bin/neofetch
		cp neofetch.1 ${DESTDIR}${MANDIR}/man1
		chmod 755 ${DESTDIR}${PREFIX}/bin/neofetch
		;;
	uninstall)
		rm -rf ${DESTDIR}${PREFIX}/bin/neofetch
		rm -rf ${DESTDIR}${MANDIR}/man1/neofetch.*
		;;
	*)
		echo "Please specify a valid action (install|uninstall)."
		echo "Run 'sudo $0 install' to install Neofetch."
		;;
esac
