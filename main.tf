terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.6" # Update-worthy.
    }
  }
}

provider "github" {
  owner = "evolutics"
}

resource "github_repository" "repository" {
  for_each = {
    "my-github-as-code" = {}
  }

  name = each.key
}
