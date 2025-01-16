# TESTING DATA
datadog_api_keys = [
    { name = "key1", description = "Key for Service 1" },
    { name = "key2", description = "Key for Service 2" },
    { name = "key3", description = "Key for Service 3" },
    { name = "key4", description = "Key for Service 4" },
    { name = "key5", description = "Key for Service 5" }
# "key1",
# "key2",
# "key3",
# "key4",
# "key5"
]

service_accounts=[
    {
        name = "newconnectiod"
        email = "venkatsainath23@gmail.com"
        roles = ["Datadog Read Only Role","Datadog Admin Role"]
    },
     {
        name = "newconnectiod1"
        email = "venkatsainath23@gmail.com"
        roles = ["Datadog Admin Role"]
    },
    {
        name = "newconnectiod2"
        email = "venkatsainath23@gmail.com"
        roles = ["Datadog Admin Role"]
    },
    {
        name = "newconnectiod3"
        email = "venkatsainath23@gmail.com"
        roles = ["Datadog Admin Role"]
    },
    {
        name = "nameaccount"
        email = "venkatsainath23@gmail.com"
        roles = ["Datadog Admin Role"]
    }

]
application_keys=[
    {
        name = "Applicaiton_key_1"
        email = "venkatsainath23@gmail.com"
        service_account_id = "newconnectiod2"
        scopes=["dashboards_read", "monitors_read"]
    },
     {
        name = "Applicaiton_key_2"
        email = "venkatsainath23@gmail.com"
        service_account_id = "newconnectiod2"
        scopes=[]
    },
    {
        name = "Applicaiton_key_3"
        email = "venkatsainath23@gmail.com"
        service_account_id = "newconnectiod2"
        scopes=[]
    }
]
roles = {
       "Datadog Admin Role"            = "cab2699e-b6aa-11ef-8d25-da7ad0900005"
       "Datadog Read Only Role"        = "cac6e112-b6aa-11ef-988d-da7ad0900005"
       "Datadog Standard Role"         = "cabc98c4-b6aa-11ef-8461-da7ad0900005"
       "service_testing_role(Managed)" = "a6131604-b909-11ef-b341-da7ad0900005"
       "testing account role"          = "service_testing_role(Managed)"
    }
datadog_rum_application=[
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