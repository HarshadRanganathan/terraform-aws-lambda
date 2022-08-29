
#####################
# Reference IAM ROLE
#####################

data "terraform_remote_state" "lambda_role" {
  backend = "s3" 

  config = {
    region         = "us-east-1"
    bucket         = "pes-${var.stage}-terraform-state"
    key            = "${var.stage}/iam/roles/lambda/terraform.tfstate"
  }
}

#####################
# zip lambda function for batch processing
#####################

data "archive_file" "dummy" {
    type = "zip"
    output_path ="${path.module}/lambda_function_payload.zip"

    source {
        content = "hello"
        filename="dummy.txt"
    }
}

