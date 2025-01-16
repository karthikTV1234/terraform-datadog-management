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

resource "time_rotating" "api_keys" {
  # for_each         = toset(var.datadog_api_keys)
  for_each =  {for key in var.datadog_api_keys:key.name=>key}
  rotation_minutes = 2

  triggers = {
    rotation_trigger = each.key  
  }
}

resource "datadog_api_key" "api_keys" {
 for_each =  {for key in var.datadog_api_keys:key.name=>key}

  name = each.value.name

  lifecycle {
    create_before_destroy = true 
  }

  depends_on = [time_rotating.api_keys]  
}
