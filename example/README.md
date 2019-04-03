# This folder represents a mini copy of terraform-consul-multidc repo that consumes terraform-aws-consul repo.

Here we can find the same files that are in terraform-consul-multidc repo.
Only terraform.tfvars file is missing that has to be fullfilled.

```
aws_access_key = ""

aws_secret_key = ""

instance_type = "t1.micro"

security_group_id = [""]

region = "us-east-1"

```

In `main.tf` we can see that we consume as module the code inside the `module` folder.

In `module` folder is exactly the same code that it's in terraform-aws-consul repo.

Included in the `example` folder is a kitchen-terraform test.

In `test` folder are located the tests. We check for the content of `terraform output` and `terraform state list` commands.

We also check if the Consul and Web servers are reachable.

In order to test with kitchen you need:

1. Ruby version of 2.3.1
2. `gem install bundler`
3. `bundle install`
4. `bundle exec kitchen list`
5. `bundle exec kitchen converge`
6. `bundle exec kitchen verify`
7. `bundle exec kitchen destroy`