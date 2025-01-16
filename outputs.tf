

output "datadog_api_keys" {
  value = { for k, v in datadog_api_key.api_keys : k => v.key }
  sensitive   = true
}
output "service_accounts" {
  value = "created service account succesfully"
}
output "available_roles" {
   value = [for role in data.datadog_roles.all_roles.roles : role.name]
}
output "roles_mapping" {
  value = { for role in data.datadog_roles.all_roles.roles : role.name => role.id }
}
# output "service_account_mapping" {
#   value = { for role in data.datadog_service_account.all_accounts.service_accounts : role.name => role.id }
# }
# output "datadog_app_key" {
#   value       = datadog_application_key.api_key.key
#   description = "Datadog APP Key"
#   sensitive   = true
# }
output "service_account_object" {
  value ={ for role in datadog_service_account.service_account : role.name => role.id } 
}
output "api_keys" {
  value = [for k, v in datadog_api_key.api_keys : v.key]
  sensitive = true
}