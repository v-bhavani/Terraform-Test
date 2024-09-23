# ... (previous resource definitions remain the same)

output "instance_ids" {
  value = {
    for vm_name, vm in google_compute_instance.vm_instance : vm_name => vm.instance_id
  }
}

output "vm_instance_details" {
  value = {
    for vm_name, vm in google_compute_instance.vm_instance : vm_name => {
      instance_id = vm.self_link
      private_ip  = vm.network_interface[0].network_ip
      public_ip   = try(vm.network_interface[0].access_config[0].nat_ip, null)
      disks = [
        for disk_key, disk in google_compute_disk.data_disk : {
          name = disk.name
          size = disk.size
        } if startswith(disk_key, vm_name)
      ]
    }
  }
}