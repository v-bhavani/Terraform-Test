resource "google_compute_image" "snapshot_image" {
  name            = "${var.snapshot_name}-image"
  source_snapshot = "projects/${var.project_id}/global/snapshots/${var.snapshot_name}"
  family          = "default"
  project         = var.project_id
}

output "image_id" {
  value = google_compute_image.snapshot_image.self_link
}