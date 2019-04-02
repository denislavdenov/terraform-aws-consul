describe command('terraform output') do
  its('stdout') { should match "client_ips_sofia" }
  its('stdout') { should match "server_ips_sofia" }
  its('stdout') { should match "client_ips_varna" }
  its('stdout') { should match "server_ips_varna" }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end

describe command('terraform state list') do
  its('stdout') { should match "module.sofia.aws_iam_instance_profile.consul\n" }
  its('stdout') { should match "module.sofia.aws_iam_policy_document.assume_role\n" }
  its('stdout') { should match "module.sofia.aws_iam_policy_document.consul\n" }
  its('stdout') { should match "module.sofia.aws_iam_role.consul\n" }
  its('stdout') { should match "module.sofia.aws_iam_role_policy.consul\n" }
  its('stdout') { should include "module.sofia.aws_instance.consul_servers[0]\n" }
  its('stdout') { should include "module.sofia.aws_instance.consul_servers[1]\n" }
  its('stdout') { should include "module.sofia.aws_instance.consul_servers[2]\n" }
  its('stdout') { should match "module.sofia.aws_instance.nginx_clients\n" }
  its('stdout') { should match "module.sofia.aws_key_pair.key\n" }
  its('stdout') { should match "module.sofia.template_file.var\n" }
  its('stdout') { should match "module.varna.aws_iam_instance_profile.consul\n" }
  its('stdout') { should match "module.varna.aws_iam_policy_document.assume_role\n" }
  its('stdout') { should match "module.varna.aws_iam_policy_document.consul\n" }
  its('stdout') { should match "module.varna.aws_iam_role.consul\n" }
  its('stdout') { should match "module.varna.aws_iam_role_policy.consul\n" }
  its('stdout') { should include "module.varna.aws_instance.consul_servers[0]\n" }
  its('stdout') { should include "module.varna.aws_instance.consul_servers[1]\n" }
  its('stdout') { should include "module.varna.aws_instance.consul_servers[2]\n" }
  its('stdout') { should match "module.varna.aws_instance.nginx_clients\n" }
  its('stdout') { should match "module.varna.aws_key_pair.key\n" }
  its('stdout') { should match "module.varna.template_file.var\n" }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end