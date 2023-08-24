variable "env" {}

# Cloudflare
variable "cloudflare_api_key" {}
variable "cloudflare_account_id" {}

variable "enable_webpack_bundle" {
  description = "Toggle to determine if webpack bundling should be done"
  default     = false
  type        = bool
}