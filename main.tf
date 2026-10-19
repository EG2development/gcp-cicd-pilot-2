# Your infrastructure goes here. Split it into more files as it grows, for
# example storage.tf or network.tf. If the deploy identity needs new project
# roles to manage it, add them to deploy.roles in environments/<env>.yaml and
# re-run ./scripts/bootstrap.sh.

resource "google_storage_bucket" "example" {
  name                        = "${var.project_id}-example"
  location                    = upper(var.region)
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"

  versioning {
    enabled = true
  }
}
