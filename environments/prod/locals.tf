locals {
  name       = "${local.owners}-${local.environment}"
  environment      = var.environment
  owners = var.business_division
  common_tags = {
    environment = local.environment
    owners      = local.owners
  }
}