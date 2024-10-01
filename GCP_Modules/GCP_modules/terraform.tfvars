project_id           = "$project"
region                = "$region"
snapshot_name         = "$snapshot"
network_name         = "$network"
subnet_name          = "$subnet"
service_account_email = "$serviceaccount"
tags =                   $nwtag

vms = [
  {
    name         = "$vmname"
    machine_type = "$mechinetype"
    zone         = "$zone"
    disks = [
      {
        name    = "$vm1disk1"
        size_gb = $vm1disk1size
      },
     {
        name    = "$vm1disk2"
        size_gb = $vm1disk2size
      },           
      {
        name    = "$vm1disk3"
        size_gb = $vm1disk3size
      },
      {
        name    = "$vm1disk4"
        size_gb = $vm1disk4size
      },
       {
        name    = "$vm1disk5"
        size_gb = $vm1disk5size
      }
    ]
  }
]
