# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 1.37.0"
    }
    azuread = {
      source = "hashicorp/azurerm"
      version = ">= 1.0.0"
    }
  }
}

module "resource_group" {
	source		= "../modules/azure/resourcegroup"
	rsc_name		= "dev_tflearning_rg"
	location_id	= "eastus"
	tags		= {Environment = "development", type = "global"}
}

variable "ARM_CLIENT_ID" {}
variable "ARM_CLIENT_SECRET" {}

module "azure-kubernetes-cluster"{
	source				= "../modules/azure/azure-kubernetes-cluster"
	rsc_name			= "elkkube"
	location_id			= "eastus"
	rg_name				= module.resource_group.name
	dns_prefix			= "nose"
	tags				= {Environment = "development"}
	poolname			= "default"
	node_count			= 1
	vm_size				= "Standard_B2s"
  	client_idvar 		= var.ARM_CLIENT_ID
  	client_secretvar 	= var.ARM_CLIENT_SECRET
  	
}
