#修改版本号
#sed -i 's/OpenWrt/BGG $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt/g' package/lean/default-settings/files/zzz-default-settings

#使用源码自带ShadowSocksR Plus+出国软件
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.14/g' target/linux/ramips/Makefile
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.14/g' target/linux/ramips/Makefile

git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/luci-app-koolproxyR
#git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
#svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall package/lean/luci-app-passwall
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package package/lean/package
git clone https://github.com/xiaorouji/openwrt-package.git package/openwrt-package
#git clone https://github.com/0118Add/luci-app-vssr-plus.git package/luci-app-vssr-plus
#git clone https://github.com/0118Add/luci-app-clash.git package/luci-app-clash
git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash
#git clone https://github.com/destan19/OpenAppFilter.git package/luci-app-oaf
#git clone https://github.com/8688Add/small.git package/small
git clone https://github.com/8688Add/luci-theme-infinityfreedom.git package/luci-theme-infinityfreedom
#git clone https://github.com/8688Add/luci-theme-opentomato.git package/luci-theme-opentomato
git clone https://github.com/bin20088/luci-app-koolddns.git package/luci-app-koolddns
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
#git clone -b 18.06 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus

#赋予koolddns权限
chmod 0755 package/luci-app-koolddns/root/etc/init.d/koolddns
chmod 0755 package/luci-app-koolddns/root/usr/share/koolddns/aliddns

# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po
sed -i 's/"解锁网易云灰色歌曲"/"网易云音乐"/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po
