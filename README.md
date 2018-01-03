Still a WIP!

# Introduction

Docker project to download Ubuntu packages by distro using apt-mirror

## Getting Started

Default distro to download is xenial.

Use this script to download xenial repos -

```
docker run --name mirror_test -v /opt/:/var/spool/apt-mirror/ apt-mirror-downloader
```

To download repo of your choice - 

```
docker run --name mirror_test -e dist=zoomba -v volume:/var/spool/apt-mirror/ apt-mirror-downloader
```
