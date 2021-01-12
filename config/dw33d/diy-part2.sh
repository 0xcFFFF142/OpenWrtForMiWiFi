#!/bin/bash
rm -rf package/ctcgfw/luci-theme-atmaterial
svn co  https://github.com/liuran001/openwrt-packages/trunk/luci-theme-atmaterial package/ctcgfw/luci-theme-atmaterial
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate