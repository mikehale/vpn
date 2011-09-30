file "/usr/sbin/policy-rc.d" do
  content "#!/bin/bash\nexit 101\n"
  mode "0755"
end
