region           = "us-east-1"
vpc_id           = "vpc-37d6a34a"
subnet_id        = "subnet-1abd9a3b"
key_name         = "linuxmgm01"
ami_id           = "ami-04c9d7e18b307fef6"
instance_type    = "t2.micro"
disk_size        = 30
disk_type        = "gp2"
security_group_id = "sg-0e5d8828a0c3c205b"
tags = {
  Name = "MyEC2Instance" 
  Project = "test"
  Mail    = "irfana.j@basiscloudsolutions.com"
}