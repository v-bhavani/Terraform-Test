project_id           = "mymigration-322809"
region               = "us-central1"
snapshot_name        = "ansiblegloden"
network_name         = "default"
subnet_name          = "default"
service_account_email = "serviceacforiam@mymigration-322809.iam.gserviceaccount.com"
tags                 = ["web", "production"]
disk_type            = "pd-balanced"

vms = [
  {
    name         = "sapbcsdemo"
    machine_type = "e2-standard-8"
    zone         = "us-east1-c"
    disks = [
      {
        name    = "vm-1-usrsap"
        size_gb = 32
      }
    ]
  }
]
