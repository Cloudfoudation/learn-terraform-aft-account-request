module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "root2code.poc+sandbox1@gmail.com"
    AccountName               = "sandbox-aft-1"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "root2code.poc+sandbox1@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox-1"

  account-request-table      = "aft-request"
  account-request-table-hash = "id"
}
