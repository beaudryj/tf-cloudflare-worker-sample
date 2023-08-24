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
| <a name="input_env"></a> [env](#input\_env) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->