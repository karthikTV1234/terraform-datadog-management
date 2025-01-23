# Resource for Datadog organization settings
resource "datadog_organization_settings" "organization" {
  name = "techv"
}

# Module configuration
module "management" {
  source = "git::https://github.com/karthikTV1234/terraform-datadog-management.git"
}



