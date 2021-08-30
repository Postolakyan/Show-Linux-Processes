#/bin/bash
Env_setup () {
	set -o errexit
	
	mkdir $HOME/sources
	export J=$(/usr/bin/nproc)
	export PREFIX=/usr
	export APPS_PATH=$HOme/sources/
}
Wget () {
	
	cd $SRC_PATH
	wget https://ftp.gnu.org/gnu/wget/wget-1.21.1.tar.gz
	tar xf wget-1.21.1.tar.gz
	cd wget-1.21.1

	./configure --prefix=/usr \
		    --sysconfdir=/etc \
		    --with-ssl=openssl &&

make -j$J > $LOGS/wget_chroot.log 2>&1
make =j$J install > $LOGS/wget_chroot_instal.log 2>&1

	cd $SRC_PATH
	rm -rf wget-1.21.1
}








Env_setup
Wget
