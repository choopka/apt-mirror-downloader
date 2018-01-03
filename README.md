Still a WIP!

# Introduction

Docker project to download Ubuntu packages by distro using apt-mirror

## Getting Started

Default distro to download is xenial.

Use this script to download xenial repos -

```
docker run --name xenial_mirror -v /opt/mirror/:/var/spool/apt-mirror/ choopka/apt-mirror-downloader
```

To download repo of your choice (e.g. trusty)- 

```
docker run --name trusty_mirror -e dist=trusty -v /opt/mirror/:/var/spool/apt-mirror/ choopka/apt-mirror-downloader
```
