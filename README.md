# Terraform Configuration for Cloudflare Workers

This Terraform configuration sets up Cloudflare Workers for a given domain. It includes configurations for providers, resources, and data sources.

## Files Overview

1. `backend.tf`: Contains provider and backend configurations.
2. `cloudflare.tf`: Defines Cloudflare Worker Script, routes, and the local file dependencies.
3. `data.tf`: Provides data sources used in the configuration.
4. `variables.tf`: Lists the variables required for the configuration.


# Note: 
- This code is setup with a [null resource](https://github.com/beaudryj/tf-cloudflare-worker-sample/blob/main/cloudflare.tf#L37) that is able to run code directly on Terraform cloud without needing a CI job for npm. (However that can be toggled off and be run in a standard pipeline)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 4.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.6.0 |
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_worker_route.worker-routes](https://registry.terraform.io/providers/cloudflare/cloudflare/4.6.0/docs/resources/worker_route) | resource |
| [cloudflare_worker_script.worker](https://registry.terraform.io/providers/cloudflare/cloudflare/4.6.0/docs/resources/worker_script) | resource |
| [null_resource.webpack](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [cloudflare_zone.zone](https://registry.terraform.io/providers/cloudflare/cloudflare/4.6.0/docs/data-sources/zone) | data source |
| [local_file.worker](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_account_id"></a> [cloudflare\_account\_id](#input\_cloudflare\_account\_id) | n/a | `any` | n/a | yes |
| <a name="input_cloudflare_api_key"></a> [cloudflare\_api\_key](#input\_cloudflare\_api\_key) | Cloudflare | `any` | n/a | yes |
| <a name="input_enable_webpack_bundle"></a> [enable\_webpack\_bundle](#input\_enable\_webpack\_bundle) | Toggle to determine if webpack bundling should be done | `bool` | `false` | no |
| <a name="input_env"></a> [env](#input\_env) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->