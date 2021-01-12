#!/bin/bash
rm -rf package/ctcgfw/luci-theme-atmaterial
svn co  https://github.com/liuran001/openwrt-packages/trunk/luci-theme-atmaterial package/ctcgfw/luci-theme-atmaterial
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
cd package
git clone https://github.com/jerrykuku/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr
git clone https://github.com/Lienol/openwrt-package
git clone https://github.com/tty228/luci-app-serverchan
git clone https://github.com/cnzd/luci-app-koolproxyR
mkdir -p luci-app-diskman && \
mkdir -p parted && \
wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Makefile -O luci-app-diskman/Makefile
wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Parted.Makefile -O parted/Makefile
rm -rf package/feeds/packages/https-dns-proxy/