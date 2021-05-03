resource "aws_organizations_organizational_unit" "new_ou" {
  name      = var.ou_name
  parent_id = var.parent_ou_id
  tags = {
    Owner = "Terraform"
  }
}

resource "aws_organizations_policy" "ou_policy" {
  name = "${var.ou_name} Policy"

  content = var.policy_content
}

resource "aws_organizations_policy_attachment" "ou_policy_attachment" {
  policy_id = aws_organizations_policy.ou_policy.id
  target_id = aws_organizations_organizational_unit.new_ou.id
}