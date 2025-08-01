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

module "repository" {
  for_each = {
    buffet = {
      description = "Assembles many Dockerfiles in one"
      topics = [
        "development",
        "docker",
        "dockerfile"
      ]
    }

    code-cleaner-buffet = {
      description = "Code formatters and linters in custom Docker images"
      topics = [
        "clean-code",
        "docker",
        "formatter",
        "linter"
      ]
    }

    comkube = {
      description = "Deploy Docker Compose apps on Kubernetes"
      topics = [
        "compose",
        "deployment",
        "docker-compose",
        "docker",
        "kubernetes"
      ]
    }

    continuous-model-app = {}

    ephemeral-desktop = {}

    haskell-formatter = {
      description = "Haskell source code formatter"
      topics = [
        "formatter",
        "haskell"
      ]
    }

    iftree = {
      description = "Include many files in your Rust code for self-contained binaries"
      topics = [
        "directory",
        "embed",
        "file",
        "folder",
        "include"
      ]
    }

    kerek = {
      description = "Light continuous delivery for Docker Compose"
      topics = [
        "compose",
        "delivery",
        "deployment",
        "docker",
        "podman"
      ]
    }

    my-github-as-code = {}

    presentation-starter = {}

    programming-conventions = {}

    sparse-approximation = {}

    travel-kit = {
      description = "Common code formatters and linters in a single Nix flake"
      topics = [
        "clean-code",
        "formatter",
        "linter",
        "nix"
      ]
    }

    workstation = {}

    x-as-code-where-x-equals = {}

    yaml-template-horror-no-more-cleaner-helm-charts = {
      description = "YAML template horror no more: cleaner Helm charts with an object-first style"
      topics = [
        "go-template",
        "helm-chart",
        "kubernetes",
        "templating",
        "yaml"
      ]
    }

    zero-downtime-deployments-with-podman-docker-or-docker-compose = {
      description = "Zero-downtime deployments with Podman, Docker, or Docker Compose"
      topics = [
        "compose",
        "deployment",
        "docker",
        "podman",
        "zero-downtime"
      ]
    }
  }

  source = "./repository"

  name        = each.key
  description = lookup(each.value, "description", null)
  topics      = lookup(each.value, "topics", [])
}
