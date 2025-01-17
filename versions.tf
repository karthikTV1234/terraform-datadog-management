terraform {
  cloud { 
    
    organization = "AssurantOrg1" 

    workspaces { 
      name = "Workspace1AssurantOrg1" 
    } 
  } 
  required_providers {
    datadog = {
      source  = "datadog/datadog"
      version = "3.50.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
}


