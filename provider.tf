provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias = "shared-services"
  assume_role {
    role_arn = "arn:aws:iam::${module.accounts.shared_services_account_id}:role/${var.organization_account_access_role}"
  }
}
