########
#
# Cloudflare
#
########

locals {
  domain     = "www.yourdomain.com"
  api_domain = "api.yourdomain.com"
}

resource "cloudflare_worker_script" "worker" {
  name       = "your-app-${lower(var.env)}"
  account_id = var.cloudflare_account_id
  # Needed to use Data provider as Terraform has fumbling with the raw contents of file. Going through Data Provider resolved that issue
  content = data.local_file.worker.content

  plain_text_binding {
    name = "DOMAIN"
    text = local.api_domain
  }
}

resource "cloudflare_worker_route" "worker-routes" {
  zone_id     = data.cloudflare_zone.zone.id
  pattern     = "${local.domain}/api/*"
  script_name = cloudflare_worker_script.worker.name
}

data "local_file" "worker" {
  filename = "${path.module}/dist/worker.min.js"
  depends_on = [
    null_resource.webpack
  ]
}

resource "null_resource" "webpack" {
  triggers = {
    always_run = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = <<-EOF
      cd ${path.module} &&\
      curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash &&\
      export NVM_DIR="$HOME/.nvm" &&
      [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" &&\
      [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" bash_completion &&\
      nvm install 16.13.0 &&\
      nvm use 16.13.0 &&\
      npm install &&\
      npm run bundle
    EOF
  }
}