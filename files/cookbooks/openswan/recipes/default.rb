include_recipe "openswan::firewall"
package "openswan"
package "lsof"

service "ipsec"

template "/etc/ipsec.conf" do
  notifies :restart, "service[ipsec]"
end

template "/etc/ipsec.secrets" do
  notifies :restart, "service[ipsec]"
end

template "/etc/ipsec.d/l2tp-psk.conf" do
  notifies :restart, "service[ipsec]"
end

service "ipsec" do
  action :start
end

execute "sysctl -p" do
  action :nothing
end

template "/etc/sysctl.d/10-ipsec.conf" do
  notifies :run, "execute[sysctl -p]"
end
