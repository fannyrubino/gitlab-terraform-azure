# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group"{
	source		= "../modules/azure"
	rsc_name		= "dev_tflearning_rg"
	location_id	= "norwayeast"
	tags		= {Environment = "development"}
}
