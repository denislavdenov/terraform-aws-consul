client_ips_sofia = attribute(
  "client_ips_sofia",
  description: "List of client IPs "
)
server_ips_sofia = attribute(
  "server_ips_sofia",
  description: "List of server IPs "
)

client_ips_varna = attribute(
  "client_ips_varna",
  description: "List of client IPs "
)
server_ips_varna = attribute(
  "server_ips_varna",
  description: "List of server IPs "
)

describe http("http://#{client_ips_sofia[0]}:80") do
  its('status') { should cmp 200 }
end

describe http("http://#{client_ips_sofia[0]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips_sofia[0]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips_sofia[1]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips_sofia[2]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end


describe http("http://#{client_ips_varna[0]}:80") do
  its('status') { should cmp 200 }
end

describe http("http://#{client_ips_varna[0]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips_varna[0]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips_varna[1]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips_varna[2]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end
