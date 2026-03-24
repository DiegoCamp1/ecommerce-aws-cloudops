variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Nombre del bucket S3"
  default     = "ecommerce-frontend-app"
}

variable "lambda_function_name" {
  description = "Nombre de la función Lambda"
  default     = "ecommerce-backend"
}