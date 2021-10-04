provider "aws" {
  region = var.region

  assume_role {
    # `terraform import` will not use data from a data source,
    # so on import we have to explicitly specify the role
    role_arn = var.import_role_arn
  }
}


variable "import_role_arn" {
  type        = string
  default     = null
  description = "IAM Role ARN to use when importing a resource"
}
