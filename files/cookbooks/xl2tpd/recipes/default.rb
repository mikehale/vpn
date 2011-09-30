package "xl2tpd"
package "ppp"

service "xl2tpd"

template "/etc/xl2tpd/xl2tpd.conf" do
  notifies :restart, "service[xl2tpd]"
end

template "/etc/ppp/options.xl2tpd" do
end

template "/etc/ppp/chap-secrets" do
end

service "xl2tpd" do
  action :start
end
