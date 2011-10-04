addresses = node.network.interfaces[node.network.default_interface].addresses
node["public_ip"] = addresses.detect{|addr,attr| attr["family"] == "inet" }.first

include_recipe "ubuntu"
