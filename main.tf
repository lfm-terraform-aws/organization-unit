module "organization-unit" {
  source  = "./modules/organization-unit"
  ou_name        = var.ou_name
  parent_ou_id   = var.parent_ou_id
  policy_content = var.policy_content
}