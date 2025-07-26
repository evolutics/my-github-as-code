resource "github_repository" "repository" {
  name        = var.name
  description = var.description
  topics      = var.topics

  allow_merge_commit     = false
  allow_rebase_merge     = false
  delete_branch_on_merge = true
  has_issues             = true

  lifecycle {
    prevent_destroy = true
  }
}
