#!/bin/bash

#Run apt-mirror
/usr/bin/perl /usr/bin/apt-mirror

#Run cleanup
/bin/bash /var/spool/apt-mirror/var/clean.sh
