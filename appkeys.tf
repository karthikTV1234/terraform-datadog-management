#Api key Creation
# resource "time_rotating" "api_keys" {
#   for_each = datadog_api_key.api_keys

#   rotation_minutes = 2

#   triggers = {
#     name = each.value.key 
#   }
# }
# resource "datadog_api_key" "api_keys" {
#   for_each = toset(var.datadog_api_keys)
#   name = each.value
# }
