variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "namespace" {
  type        = string
  description = "Namespace (e.g. `eg` or `cp`)"
  default     = "aws"
}

variable "stage" {
  type        = string
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  default     = "alpha"
}

variable runtime {
  type        = string
  default     = "python3.8"
  description = "See Runtimes for valid values."
}

variable timeout {
  type        = number
  default     = 3
  description = "The amount of time your Lambda Function has to run in seconds"
}

variable tracing_mode {
  type        = string
  default     = "PassThrough"
  description = "Can be either PassThrough or Active"
}


variable name{
  type        = string
  default     = ""
  description = "Name of Lambda Function"
}


variable lambda_handler {
  type        = string
  default     = ""
  description = "Name of lambda_handler"
}
