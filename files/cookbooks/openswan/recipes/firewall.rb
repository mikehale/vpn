execute "apply firewall" do
  command "iptables-restore < /etc/iptables.rules"
  action :nothing
end

template "/etc/iptables.rules" do
  notifies :run, "execute[apply firewall]"
end
