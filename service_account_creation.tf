
data "datadog_roles" "all_roles" {}
resource "datadog_service_account" "service_account" {
  for_each = { for account in var.service_accounts : account.name => account }

  name  = each.value.name
  email = each.value.email
    roles = [
        for role_name in each.value.roles:lookup({ for role in data.datadog_roles.all_roles.roles : role.name => role.id },role_name,null)
    ]
}
#Application Key Creation 
resource "datadog_service_account_application_key" "app_key" {
    for_each = {for application_key in var.application_keys: application_key.name=>application_key}
    name = each.value.name
    service_account_id = lookup({for account in datadog_service_account.service_account:account.name =>account.id},each.value.service_account_id,null)
}

