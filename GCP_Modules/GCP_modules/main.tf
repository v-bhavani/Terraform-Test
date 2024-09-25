provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "terraformbcs"  # Replace with your bucket name
    prefix = "terraform/state/modulesvm.tfstate"
  }
}

module "snapshot" {
  source        = "./modules/snapshot"
  project_id    = var.project_id
  snapshot_name = var.snapshot_name
}

module "vm_and_disk" {
  source                = "./modules/vm_and_disk"
  vms                   = var.vms
  project_id            = var.project_id
  network_name          = var.network_name
  subnet_name           = var.subnet_name
  service_account_email = var.service_account_email
  tags                  = var.tags
  snapshot_image        = module.snapshot.image_id
  disk_type             = var.disk_type
}

