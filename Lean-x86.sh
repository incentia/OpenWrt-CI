# 版本号里显示一个自己的名字（BGG build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
#sed -i "s/OpenWrt /BGG build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

#使用源码自带ShadowSocksR Plus+出国软件
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' target/linux/x86/Makefile
sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' target/linux/x86/Makefile

#git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
rm -rf package/lean/luci-app-dockerman
git clone https://github.com/lisaac/luci-app-dockerman.git package/openwrt-packages/luci-app-dockerman
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#git clone https://github.com/Mattraks/helloworld.git package/lean/luci-app-ssr-plus
#rm -rf package/lean/xray
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/xray package/lean/xray
git clone https://github.com/garypang13/openwrt-packages.git package/openwrt-packages
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone https://github.com/Lienol/openwrt-package.git package/openwrt-package
#git clone https://github.com/8688Add/luci-app-vssr-plus.git package/luci-app-vssr-plus
#git clone https://github.com/8688Add/luci-app-koolproxyR.git package/luci-app-koolproxyR
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash
#git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
svn co https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom/trunk/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
#git clone https://github.com/ElonH/Rclone-OpenWrt.git package/luci-app-rclone
#git clone https://github.com/8688Add/luci-theme-opentomato.git package/luci-theme-opentomato
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
#git clone -b 18.06 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge
#rm -rf package/applications/luci-app-https-dns-proxy
#git clone https://github.com/8688Add/https-dns-proxy.git package/applications/luci-app-https-dns-proxy-whisky
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-gost package/lean/luci-app-gost
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/gost package/lean/gost
#rm -rf feeds/packages/net/https-dns-proxy
#svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy feeds/packages/net/https-dns-proxy
#git clone https://github.com/riverscn/openwrt-iptvhelper.git package/luci-app-iptvhelper
#git clone https://github.com/bin20088/luci-app-koolddns.git package/luci-app-koolddns

#赋予koolddns权限
#chmod 0755 package/luci-app-koolddns/root/etc/init.d/koolddns
#chmod 0755 package/luci-app-koolddns/root/usr/share/koolddns/aliddns

# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了
#sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate

# 修改主机名字，把OpenWrt-123修改你喜欢的就行（不能纯数字或者使用中文）
#sed -i '/uci commit system/i\uci set system.@system[0].hostname='OpenWrt-123'' package/lean/default-settings/files/zzz-default-settings

# 版本号里显示一个自己的名字（281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
#sed -i "s/OpenWrt /281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
#sed -i 's/"BaiduPCS Web"/"百度网盘"/g' package/lean/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua
#sed -i 's/cbi("qbittorrent"),_("qBittorrent")/cbi("qbittorrent"),_("BT下载")/g' package/lean/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua
#sed -i 's/"aMule设置"/"电驴下载"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
#sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
#sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po
#sed -i 's/"解锁网易云灰色歌曲"/"网易云音乐"/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po
#sed -i 's/"实时流量监测"/"流量"/g' package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po
#sed -i 's/"KMS 服务器"/"KMS激活"/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
#sed -i 's/"TTYD 终端"/"命令窗"/g' package/lean/luci-app-ttyd/po/zh-cn/terminal.po
#sed -i 's/"USB 打印服务器"/"打印服务"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
#sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
#sed -i 's/"Web 管理"/"Web"/g' package/lean/luci-app-webadmin/po/zh-cn/webadmin.po
#sed -i 's/"管理权"/"改密码"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
#sed -i 's/"带宽监控"/"监视"/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
