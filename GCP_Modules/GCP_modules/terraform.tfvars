project_id           = "mymigration-322809"
region                = "us-central1"
snapshot_name         = "ansiblegloden"
network_name         = "default"
subnet_name          = "default"
service_account_email = "serviceacforiam@mymigration-322809.iam.gserviceaccount.com"
tags =                   ["web","production"]

vms = [
  {
    name         = "saprhelvm"
    machine_type = "n1-standard-2"
    zone         = "us-central1-a"
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
]
