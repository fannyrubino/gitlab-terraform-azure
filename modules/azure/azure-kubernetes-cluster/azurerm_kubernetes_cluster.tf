resource "azurerm_kubernetes_cluster" "aks" {
	name                = var.rsc_name
	location            = var.location_id
	resource_group_name = var.rg_name
	dns_prefix          = var.dns_prefix
	tags				= var.tags
  	
  	default_node_pool	{
  		name 		= var.poolname
  		node_count 	= var.node_count
  		vm_size		= var.vm_size
  	}
  	
  	service_principal {
  		client_id 		= var.client_idvar
  		client_secret 	= var.client_secretvar
  	}
  	
}

