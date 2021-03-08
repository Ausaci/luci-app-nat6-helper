# luci-app-nat6-helper


- 启用后根据 ipv6 的 wan6 接口状态，自动配置 nat6


Usage:

1. 【 网络 > 接口 > 全局网络选项 】 中的 【 IPv6 ULA 前缀 】 改为 2fff::/64

~~2. 【LAN 接口 > DHCP 服务器 > IPv6 设置】：总是通告默认路由：√~~

3. 运行 ipv6nat.sh 脚本
```
cd /tmp
chmod +x ipv6nat.sh
sh ipv6nat.sh
```

4. 启用插件



# 参考链接：
1. [LEDE 下的 IPv6 NAT6](https://lixingcong.github.io/2017/04/24/ipv6-nat-lede/)
2. [Ausaci IPv6 Settings](https://github.com/Ausaci/Archives/blob/master/OpenWrt_IPv6_Settings.md)
