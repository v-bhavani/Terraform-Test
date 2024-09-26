variable "region" {
  description = "The AWS region to deploy the resources"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
}

variable "key_name" {
  description = "The name of the key pair"
  type        = string
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
}

variable "disk_size" {
  description = "The size of the OS disk in GB"
  type        = number
}

variable "disk_type" {
  description = "The type of disk (gp2, io1, io2, sc1, st1)"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}