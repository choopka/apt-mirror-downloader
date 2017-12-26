#!/bin/bash -xe

echo "Running apt-mirror for $dist distribution..."

#Update dist to download
sed -i 's/xenial/'$dist'/g' /etc/apt/mirror.list
cat /etc/apt/mirror.list
#Run apt-mirror
#/usr/bin/perl /usr/bin/apt-mirror

#Run cleanup
#/bin/bash /var/spool/apt-mirror/var/clean.sh
