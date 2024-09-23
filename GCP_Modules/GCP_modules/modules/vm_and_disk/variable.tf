variable "vms" {
  description = "List of VMs to create with their associated disks"
  type = list(object({
    name         = string
    machine_type = string
    zone         = string
    disks = list(object({
      name    = string
      size_gb = number
    }))
  }))
}

variable "project_id" {
  description = "The ID of the project"
  type        = string
}

variable "network_name" {
  description = "The name of the network to use"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnetwork to use"
  type        = string
}

variable "service_account_email" {
  description = "The email of the service account to use for VMs"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the VMs"
  type        = list(string)
}

variable "snapshot_image" {
  description = "The self_link of the snapshot image to use"
  type        = string
}