m = Map("nat6-helper", "NAT6 配置助手") 
m.description = translate("IPv6 路由器做 NAT6，使得路由器下级可以使用 IPv6 协议访问网站。<br />若插件启用失败，请检查路由器是否正常获取到IPv6")

m:section(SimpleSection).template  = "nat6-helper/nat6_status"

s = m:section(TypedSection, "nat6-helper")
s.addremove = false
s.anonymous = true

enabled = s:option(Flag, "enabled", translate("Enable"))
enabled.default = 0
enabled.rmempty = false

name = s:option(Value, "name", translate("Interface"))
name.rmempty = false
name.default = "wan6"
name.description = translate("默认为 wan6，也可自行设置为有 IPv6 的网口名称，当该网卡变动时自动设置 nat6")

ipv6ula = s:option(Value, "ipv6ula", translate("IPv6 ULA 前缀"))
ipv6ula.rmempty = false
ipv6ula.default = "dfff::/64"
ipv6ula.description = translate("设置的 IPv6 ULA 前缀，默认 dfff::/64")

ipv6dns = s:option(Value, "ipv6dns", translate("IPv6 DNS"))
ipv6dns.rmempty = false
ipv6dns.default = "2001:4860:4860::8888 240c::6666"
ipv6dns.description = translate("IPv6 DNS，多个 DNS 以空格分隔")

init = s:option(Button, "init_button", translate("初始化"))
init.inputtitle = translate("一键配置")
init.inputstyle = "apply"
init.description = translate("一键设置 DHCPv6, IPv6 ULA 前缀 和 IPv6 DNS，并设置通告默认网关。<br />启用本插件前及修改 IPv6 ULA 前缀、IPv6 DNS 后需执行一次，配置完毕后会重启一次网络，稍等片刻网络恢复再进行设置")
function init.write(self, section)
    io.popen("/etc/init.d/nat6-helper setLan")
end

return m
