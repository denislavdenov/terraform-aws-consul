describe command('terraform output') do
  its('stdout') { should match "client_ips" }
  its('stdout') { should match "server_ips" }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end

describe command('terraform state list') do
  its('stdout') { should match "aws_iam_instance_profile.consul\n" }
  its('stdout') { should match "aws_iam_policy_document.assume_role\n" }
  its('stdout') { should match "aws_iam_policy_document.consul\n" }
  its('stdout') { should match "aws_iam_role.consul\n" }
  its('stdout') { should include "aws_instance.consul_servers_dc1[0]\n" }
  its('stdout') { should include "aws_instance.consul_servers_dc1[1]\n" }
  its('stdout') { should include "aws_instance.consul_servers_dc1[2]\n" }
  its('stdout') { should match "aws_instance.nginx_clients_dc1\n" }
  its('stdout') { should match "aws_key_pair.key\n" }
  its('stdout') { should match "template_file.var\n" }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end