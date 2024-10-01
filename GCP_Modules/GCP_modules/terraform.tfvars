project_id           = "sapspecific"
region                = "us-east1"
snapshot_name         = "rhelosdisk"
network_name         = "default"
subnet_name          = "default"
service_account_email = "1088675481439-compute@developer.gserviceaccount.com"
tags =                  ["web","production"]
disk_type =             "pd-balanced"

vms = [
  {
    name         = "sapbcsdemo"
    machine_type = "e2-standard-8"
    zone         = "us-east1-c"
    disks = [
      {
        name    = "vm-1-usrsap"
        size_gb = 32
      },
     {
        name    = "vm-1-hanashared"
        size_gb = 16
      },
      {
        name    = "vm-1-hanadata"
        size_gb = 64
      },
      {
        name    = "vm-1-log"
        size_gb = 16
      },
       {
        name    = "vm-1-softdump"
        size_gb = 64
      }
    ]
  }
