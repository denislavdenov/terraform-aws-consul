client_ips_dc1 = attribute(
  "client_ips_dc1",
  description: "List of client IPs "
)
server_ips_dc1 = attribute(
  "server_ips_dc1",
  description: "List of server IPs "
)

client_ips_dc2 = attribute(
  "client_ips_dc2",
  description: "List of client IPs "
)
server_ips_dc2 = attribute(
  "server_ips_dc2",
  description: "List of server IPs "
)

describe http("http://#{client_ips_dc1[0]}:80") do
  its('status') { should cmp 200 }
end

describe http("http://#{client_ips_dc1[0]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips_dc1[0]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips_dc1[1]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips_dc1[2]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end


describe http("http://#{client_ips_dc2[0]}:80") do
  its('status') { should cmp 200 }
end

describe http("http://#{client_ips_dc2[0]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips_dc2[0]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips_dc2[1]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips_dc2[2]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end
