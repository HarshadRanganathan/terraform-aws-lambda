provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {}
}

module "lambda" {
  source = "git::https://github.com/HarshadRanganathan/terraform-aws-module-lambda.git//module?ref=1.0.0"

  region         = var.region
  name           = "${var.namespace}-${var.stage}-${var.name}"
  description    = local.description
  filename       = "${data.archive_file.dummy.output_path}"
  runtime        = var.runtime
  lambda_role    = data.terraform_remote_state.lambda_role.outputs.role_arn
  lambda_handler = var.lambda_handler
  tags           = local.tags
  timeout        = var.timeout
  tracing_mode   = var.tracing_mode
  memory_size    = var.memory_size
}
