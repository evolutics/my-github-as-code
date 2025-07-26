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
    "buffet" = {
      description = "Assembles many Dockerfiles in one"
    }

    "code-cleaner-buffet" = {
      description = "Code formatters and linters in custom Docker images"
    }

    "comkube" = {
      description = "Deploy Docker Compose apps on Kubernetes"
    }

    "continuous-model-app" = {}

    "ephemeral-desktop" = {}

    "haskell-formatter" = {
      description = "Haskell source code formatter"
    }

    "iftree" = {
      description = "Include many files in your Rust code for self-contained binaries"
    }

    "kerek" = {
      description = "Light continuous delivery for Docker Compose"
    }

    "my-github-as-code" = {}

    "presentation-starter" = {
      description = "Starter template for presentations with reveal.js"
    }

    "programming-conventions" = {}

    "sparse-approximation" = {}

    "travel-kit" = {
      description = "Common code formatters and linters in a single Nix flake"
    }

    "workstation" = {}

    "x-as-code-where-x-equals" = {}

    "yaml-template-horror-no-more-cleaner-helm-charts-with-an-object-first-method" = {
      description = "YAML template horror no more: cleaner Helm charts with an object-first method"
    }

    "zero-downtime-deployments-with-podman-docker-or-docker-compose" = {
      description = "Zero-downtime deployments with Podman, Docker, or Docker Compose"
    }
  }

  name        = each.key
  description = lookup(each.value, "description", null)

  allow_merge_commit     = false
  allow_rebase_merge     = false
  delete_branch_on_merge = true
  has_issues             = true
}
