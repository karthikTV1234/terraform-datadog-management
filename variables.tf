# variable "developer_permissions" {
#   type = set(string)
#   default = [
#     # Standard Permisions
#     "standard",
#     # APM
#     "apm_pipelines_read",
#     "apm_retention_filter_read",
#     "apm_service_catalog_read",
#     "apm_service_ingest_read",
#     "debugger_read",
#     "continuous_profiler_read",
#     # Dashboards
#     "dashboards_write",
#     "generate_dashboard_reports",
#     # Logs
#     "logs_read_data",
#     "logs_read_archives",
#     "monitors_write",
#     "monitors_downtime",
#     # SLOs
#     "slos_write",
#     "slos_corrections",
#     # Synthetics
#     "synthetics_read",
#     # Watchdog
#     "watchdog_insights_read",
#     # Workflows
#     "workflows_read",
#   ]

#   description = "Operations Permissions"
# }

# variable "operations_permissions" {
#   type = set(string)
#   default = [
#     # Standard Permisions
#     "standard",
#     # APM
#     "apm_pipelines_read",
#     "apm_retention_filter_read",
#     "apm_service_catalog_read",
#     "apm_service_ingest_read",
#     "debugger_read",
#     "continuous_profiler_read",
#     # Dashboards
#     "dashboards_write",
#     "generate_dashboard_reports",
#     # Logs
#     "logs_read_data",
#     "logs_read_archives",
#     "monitors_write",
#     "monitors_downtime",
#     # SLOs
#     "slos_write",
#     "slos_corrections",
#     # Synthetics
#     "synthetics_read",
#     # Watchdog
#     "watchdog_insights_read",
#     # Workflows
#     "workflows_read",
#   ]

#   description = "Operations Permissions"
# }

# variable "serviceacccount_permissions" {
#   type = set(string)
#   default = [
#     # Standard Permisions
#     "standard",
#     # APM
#     "apm_pipelines_read",
#     "apm_retention_filter_read",
#     "apm_service_catalog_read",
#     "apm_service_ingest_read",
#     "debugger_read",
#     "continuous_profiler_read",
#     # Dashboards
#     "dashboards_write",
#     "generate_dashboard_reports",
#     # Logs
#     "logs_read_data",
#     "logs_read_archives",
#     "monitors_write",
#     "monitors_downtime",
#     # SLOs
#     "slos_write",
#     "slos_corrections",
#     # Synthetics
#     "synthetics_read",
#     # Watchdog
#     "watchdog_insights_read",
#     # Workflows
#     "workflows_read",
#   ]

#   description = "Service Account Permissions"
# }


# variable "servicenow_dev_username" {
#   type        = string
#   description = "ServiceNow Dev Username"
#   default     = null
# }

# variable "servicenow_dev_password" {
#   type        = string
#   description = "ServiceNow Dev Password"
#   default     = null
#   sensitive   = true
# }

# variable "system_group_mapping" {
#   type        = map(string)
#   description = "System team roles"
#   default = {
#     "Read Only" = "GL-Okta-Datadog_RO"
#     Standard    = "GL-Okta-Datadog_Standard"
#     Admin       = "GL-Okta-Datadog_Admin"
#   }
# }

# variable "tenants" {
#   type = map(object({
#     enable_rum              = optional(bool, false)
#     cost_center             = string
#     subcost_center          = string
#     app_name                = string
#     app_owner               = string
#     service_account_email   = string
#     service_account_enabled = optional(bool, true)
#     service_emails          = optional(list(string), [])
#   }))
#   description = "Tenants Information"

# }
variable "datadog_api_key" {
  type        = string
  description = "Datadog API Key"
  default = "2de1d321d8839fe9aace34f87e248fad"
}
 
variable "datadog_app_key" {
  type        = string
  description = "Datadog Application Key"
  default = "e513dd1222affc9e2171efe31034902f0475dad3"
}
variable "datadog_api_url" {
  type        = string
  description = "Datadog API URL"
  default     = "https://us5.datadoghq.com"
}

variable "datadog_api_keys" {
 type = list(object({
    name       = string
    description = optional(string)
  }))
  default=[
    { name = "key1sdsdsd", description = "Key for Service 1" },
    { name = "key2sdsdsd", description = "Key for Service 2" },
    { name = "key3sdsdsd", description = "Key for Service 3" },
    { name = "key4sdsdsd", description = "Key for Service 4" },
    { name = "key5sdsdsd", description = "Key for Service 5" }
# "key1",
# "key2",
# "key3",
# "key4",
# "key5"
]
}
variable "service_accounts" {
  type = list(object({
    name = string
    email = string
    roles=list(string)
  }))
description = "A list of service account"
default=[
    {
        name = "newconnectiodsss"
        email = "venkatsainath23@gmail.com"
        roles = ["Datadog Read Only Role","Datadog Admin Role"]
    },
     {
        name = "newconnectiod1dsdsd"
        email = "venkatsainath23@gmail.com"
        roles = ["Datadog Admin Role"]
    },
    {
        name = "newconnectiod2dsdsd"
        email = "venkatsainath23@gmail.com"
        roles = ["Datadog Admin Role"]
    },
    {
        name = "newconnectiod3dsdsd"
        email = "venkatsainath23@gmail.com"
        roles = ["Datadog Admin Role"]
    },
    {
        name = "nameaccount"
        email = "venkatsainath23@gmail.com"
        roles = ["Datadog Admin Role"]
    }

]
}
variable "roles" {
  type = map(string)
  description = "A list of roles account"
 default= {
       "Datadog Admin Role"            = "cab2699e-b6aa-11ef-8d25-da7ad0900005"
       "Datadog Read Only Role"        = "cac6e112-b6aa-11ef-988d-da7ad0900005"
       "Datadog Standard Role"         = "cabc98c4-b6aa-11ef-8461-da7ad0900005"
       "service_testing_role(Managed)" = "a6131604-b909-11ef-b341-da7ad0900005"
       "testing account role"          = "service_testing_role(Managed)"
    }
}
variable "application_keys" {
  type = list(object({
    name = string
    email = string
    service_account_id=string
    scopes=list(string)
  }))
  description = "A list of application keys"
  default=[
    {
        name = "Applicaiton_key_1sss"
        email = "venkatsainath23@gmail.com"
        service_account_id = "newconnectiod2dsdsd"
        scopes=["dashboards_read", "monitors_read"]
    },
     {
        name = "Applicaiton_key_2sss"
        email = "venkatsainath23@gmail.com"
        service_account_id = "newconnectiod2dsdsd"
        scopes=[]
    },
    {
        name = "Applicaiton_key_3sss"
        email = "venkatsainath23@gmail.com"
        service_account_id = "newconnectiod2dsdsd"
        scopes=[]
    }
]

}
variable "datadog_rum_application" {
 type = list(object({
    name       = string
    type = string
  }))
  validation {
    condition = alltrue([for app in var.datadog_rum_application : contains(["browser", "ios", "android", "react-native", "flutter"], app.type)])
    error_message = "Each RUM application's type must be one of 'browser' or 'mobile'."
  }
  default=[
     {
        name = "Rum_1",
        type = "browser"
        
    },
     {
        name = "rum_2",
        type = "browser"
    },
    {
        name = "rum_3",
        type = "browser"
    }
]
}
