#!/bin/bash

zypper sa -t YUM http://dl.google.com/linux/rpm/stable/i386 google

cat > /etc/zypp/repos.d/lzs_i686_opensuse_11.2.repo << EOF
[download.videolan.org-SuSE]
name=VideoLan Repository
enabled=1
autorefresh=0
baseurl=http://download.videolan.org/pub/videolan/vlc/SuSE/11.2/
path=/
type=rpm-md
keeppackages=0

[packman.inode.at-suse]
name=Packman Repository
enabled=1
autorefresh=0
baseurl=http://packman.inode.at/suse/11.2/
path=/
type=rpm-md
keeppackages=0

[subpixel]
name=subpixel
enabled=1
autorefresh=0
baseurl=http://opensuse-community.org/subpixel/openSUSE_11.2
path=/
type=rpm-md
keeppackages=0

[swyear]
name=swyear
enabled=1
autorefresh=0
baseurl=http://download.opensuse.org/repositories/home:/swyear/openSUSE_11.2
path=/
type=rpm-md
keeppackages=0
EOF
