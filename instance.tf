resource "aws_instance" "apache" {
  ami = "ami-052c08d70def0ac62" # Amazon Linux
  instance_type = var.ec2_type
  count = var.instance_count
  key_name = "abhidevops"
  security_groups = [ "nichetech" ]
tags = {
     Name = "Terraform_demo"
	}
}
#Create Sec Grup

#resource "aws_security_group" "nichetech" {
  #name = "nichetech"

#}
