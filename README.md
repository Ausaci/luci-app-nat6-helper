# luci-app-nat6-helper


- 启用后根据 ipv6 的 wan6 接口状态，自动配置 nat6


Usage:

1. 检查软件包是否安装 `ip6tables kmod-ipt-nat6 kmod-ip6tables kmod-ip6tables-extra`，如若没有，请 ssh 运行 `opkg update && opkg install ip6tables kmod-ipt-nat6 kmod-ip6tables kmod-ip6tables-extra` 安装

2. 运行 ipv6nat.sh 脚本
```
cd /tmp
chmod +x ipv6nat.sh
sh ipv6nat.sh
```

3. 启用插件



# 参考链接：
1. [LEDE 下的 IPv6 NAT6](https://lixingcong.github.io/2017/04/24/ipv6-nat-lede/)
2. [Ausaci IPv6 Settings](https://github.com/Ausaci/Archives/blob/master/OpenWrt_IPv6_Settings.md)
