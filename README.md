# Introduction

Docker project to download Ubuntu packages by distro using apt-mirror

## Getting Started

Default distro to download is xenial.

Use this script to download standard xenial repos-

```
docker run --name xenial_mirror -v /opt/mirror/:/var/spool/apt-mirror/ choopka/apt-mirror-downloader
```

To download repo of your choice (e.g. trusty) using standard mirror.list- 

```
docker run --name trusty_mirror -e dist=trusty -v /opt/mirror/:/var/spool/apt-mirror/ choopka/apt-mirror-downloader
```

To download repos using your own mirror.list, it must be placed in a separate volume as "mirror.list" mapped to /tmp/ on container and be in correct form for apt-mirror to work with it.

For example - 

```
docker run --name user_configed_mirror -v /opt/mirror/:/var/spool/apt-mirror/ -v /opt/mirror_list/:/tmp/ choopka/apt-mirror-downloader
```
