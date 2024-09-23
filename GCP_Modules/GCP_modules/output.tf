output "vm_instance_details" {
  description = "Detailed information about each VM instance"
  value       = module.vm_and_disk.vm_instance_details
}

output "instance_ids" {
  description = "Map of VM names to their instance IDs"
  value       = module.vm_and_disk.instance_ids
}

output "snapshot_image_id" {
  description = "ID of the created snapshot image"
  value       = module.snapshot.image_id
}