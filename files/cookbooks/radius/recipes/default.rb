package "freeradius"

template "/etc/freeradius/clients.conf" do
  owner "root"
  group "freerad"
  mode 0640
end

template "/etc/freeradius/users" do
  owner "root"
  group "root"
  mode 0644
end
