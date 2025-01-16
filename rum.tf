resource "datadog_rum_application" "terraform_application" {
    for_each = {for rum in var.datadog_rum_application:rum.name => rum}
    name = each.value.name
    type = each.value.type
}