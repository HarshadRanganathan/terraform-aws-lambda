output "lambda_id" {
  value       = module.lambda.lambda_id
  description = "Lambda Id"
}

output "lambda_arn" {
  value = module.lambda.lambda_arn
  description = "The Amazon Resource Name (ARN) identifying your Lambda Function"
}