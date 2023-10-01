#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

sed -i "48a\\
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config\n\
" package/lean/default-settings/files/zzz-default-settings

sed -i "s/PKG_HASH:=376D627767D6C4F05105AB6D497B0D9ABA7111770DD9D995225478209C37EA63/PKG_HASH:=376d627767d6c4f05105ab6d497b0d9aba7111770dd9d995225478209c37ea63/g" feeds/packages/net/curl/Makefile
