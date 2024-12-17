#
#
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# #修改插件
cd feeds/luci/applications
rm -rf *passwall*
# rm -rf *clash*

git clone https://github.com/xiaorouji/openwrt-passwall.git
# git clone https://github.com/xiaorouji/openwrt-passwall2.git
# 移动目录到上级目录
mv openwrt-passwall/luci-app-passwall .
# mv openwrt-passwall2/luci-app-passwall2 .
rm -rf *openwrt-pa*
