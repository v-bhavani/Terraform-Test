variable "disk_size_gb" {
  description = "Size of the disk in gigabytes"
  type        = number
}

variable "disk_type" {
  description = "Type of the disk (e.g., gp2, io1)"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone where the disk will be created"
  type        = string
}

variable "tag" {
  description = "Name tag for the AWS resource"
  type        = string
}
