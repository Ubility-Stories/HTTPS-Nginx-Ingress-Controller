data "azurerm_kubernetes_cluster" "aks" {
  name                = var.kubernetes_cluster_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_public_ip" "aks_public_ip" {
  name                = "${var.prefix}-public-ip"
  location            = var.kubernetes_cluster_location
  resource_group_name = data.azurerm_kubernetes_cluster.aks.node_resource_group
  allocation_method   = "Static"
  sku                 = "Standard"
}
