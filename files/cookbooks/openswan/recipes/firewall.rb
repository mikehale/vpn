service "firewall" do
  action :nothing
  restart_command "iptables-restore < /etc/iptables.rules"
end

template "/etc/iptables.rules" do
  notifies :restart, "service[firewall]", :immediately
end

template "/etc/iptables.downrules" do
end

template "/etc/network/if-pre-up.d/iptablesload" do
  mode "0755"
end

template "/etc/network/if-post-down.d/iptablessave" do
  mode "0755"
end
