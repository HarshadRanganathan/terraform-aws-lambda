region         = "us-east-1"
bucket         = "aws-prod-terraform-state"
key            = "prod/lambda/terraform.tfstate"
dynamodb_table = "aws-prod-terraform-state-lock"
encrypt        = "true"
