terraform {
  cloud { 
    
    organization = "AssurantOrg1" 

    workspaces { 
      name = "Workspace1AssurantOrg1" 
    } 
  } 
  required_providers {
    datadog = {
      source  = "DataDog/datadog"
      version = "3.50.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
}

provider "datadog" {
  api_key = "2de1d321d8839fe9aace34f87e248fad"
  app_key = "e513dd1222affc9e2171efe31034902f0475dad3"
  api_url = "https://us5.datadoghq.com"
}
