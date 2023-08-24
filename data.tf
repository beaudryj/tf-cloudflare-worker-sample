########
#
# DATA 
#
########

locals {
  zone = "yourdomain.com"
}

data "cloudflare_zone" "zone" {
  name = local.zone
}
