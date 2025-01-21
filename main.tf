resource "datadog_organization_settings" "organization" {
  name = "techv"

}

module "management" {
  source  = "github.com/karthikTV1234/terraform-datadog-management"
  version = "1.1.3"
}
#Test
