terraform {
  backend "azurerm" {

    storage_account_name = "tfbackendexample"
    container_name       = "tfstateexample"
    key                  = "example.terraform.tfstate"
    resource_group_name  = "rg-tfbackend-example"
    subscription_id      = "XXXXXX-XXXX-XXXX-XXXX-XXXXXX" //Fill in your own Azure subscription_id 
    tenant_id            = "XXXXXX-XXXX-XXXX-XXXX-XXXXXX" //Fill in your own Azure Tenant_id 
 

  }
}

//Backend should be created in Azure as a Storage Account. You can change 'example' with your own information. 