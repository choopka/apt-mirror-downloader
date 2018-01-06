#!/bin/bash -xe

run_apt_mirror(){
	cat /etc/apt/mirror.list
	usr/bin/perl /usr/bin/apt-mirror
}

run_cleanup(){
	/bin/bash /var/spool/apt-mirror/var/clean.sh
}

mirror_file="/opt/mirror.list"
if [ -f "$mirror_file" ]
then
	#Running apt-mirror with custom user mirror.list
	cp $mirror_file /etc/apt/mirror.list
	echo "Running apt-mirror with the following mirror.list:"
	run_apt_mirror
	run_cleanup
else
	#Running with standard mirror.list and user-provided dist
	echo "Running apt-mirror for $dist distribution..."
	sed -i 's/xenial/'$dist'/g' /etc/apt/mirror.list
	run_apt_mirror
	run_cleanup
fi
