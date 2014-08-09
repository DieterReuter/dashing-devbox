# Dashing DevBox

This development box is based on Ubuntu 14.04 (Trusty 64),
built with `Vagrant` using `box-cutter/ubuntu1404-docker`.
This devbox is tested on `Mac OS X 10.9.4` with `VirtualBox 4.3.14` and `VMware Fusion 6.04`.


## Create a basic Dashboard with `Dashing`
```bash
vagrant up
vagrant shh
cd /opt/application
dashing new dashboard
cd dashboard
bundle
```

## Start your first awesome Dashboard server
```bash
dashing start
```
On your host machine just start your web browser
```bash
open http://127.0.0.1:3030/
```
And you'll see the new sample dashboard up and running.


# Licensing
Copyright (c) 2014 Dieter Reuter

MIT License, see LICENSE.txt for more details.
