#!/bin/bash
###
 # @Author: xiawang1024
 # @Date: 2023-01-06 15:29:51
 # @LastEditTime: 2023-01-06 15:30:17
 # @LastEditors: xiawang1024
 # @Description: 
 # @FilePath: /OpenWrt-360T7/diy2.sh
 # 工作，生活，健康
### 
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
sed -i "s/hostname='ImmortalWrt'/hostname='360T7'/g" package/base-files/files/bin/config_generate
sed -i "s/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION='OpenWrt By Xiaw1024 $(date +"%Y%m%d")'/g" package/base-files/files/etc/openwrt_release
