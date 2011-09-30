node["public_ip"] = `ifconfig eth0 | egrep -o '([0-9]{1,3}\.){3}[0-9]{1,3}'|head -n1`
include_recipe "ubuntu"
