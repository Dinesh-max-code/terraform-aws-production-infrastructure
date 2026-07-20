locals {

  project_name = "Terraform AWS Production Infrastructure"

  project_short = "prod"

  environment = "production"

  owner = "Dinesh"

  common_tags = {

    Environment = local.environment

    Project = local.project_name

    ManagedBy = "Terraform"

    Owner = local.owner

  }

}