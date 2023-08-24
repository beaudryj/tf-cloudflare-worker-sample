provider "cloudflare" {
  api_token = var.cloudflare_api_key
}

terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.6.0"
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "your-org-here"
    workspaces {
      prefix = "Cloudflare-Workers-"
    }
  }
}