client_ips = attribute(
  "client_ips",
  description: "List of client IPs "
)
server_ips = attribute(
  "server_ips",
  description: "List of server IPs "
)

describe http("http://#{client_ips[0]}:80") do
  its('status') { should cmp 200 }
end

describe http("http://#{client_ips[0]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips[0]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips[1]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ips[2]}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end



