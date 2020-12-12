#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/10.1.1.254/g' package/base-files/files/bin/config_generate

# 去除默认主题
sed -i 's/+luci-theme-bootstrap/ /g' feeds/luci/collections/luci/Makefile
