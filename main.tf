# Terraform code to provision windows 2022

  resource "azurerm_resource_group" "azurerm" {
    name = var.rsg-name
    location = var.location
     } 
# Virtual Network Creation
resource "azurerm_virtual_network" "vnet" {
 name                = var.vnet-name
 address_space       = ["10.0.0.0/16"]
 location            = azurerm_resource_group.azurerm.location
 resource_group_name = azurerm_resource_group.azurerm.name
 
}
# subnetwork creation
resource "azurerm_subnet" "subnet" {
 name                 = var.subnet-name
 resource_group_name  = azurerm_resource_group.azurerm.name
 virtual_network_name = azurerm_virtual_network.vnet.name
 address_prefixes       = ["10.0.2.0/24"]
}

# network-interface creation
resource "azurerm_network_interface" "windows-nic" {
 name                         = var.nic-name
 location                     = azurerm_resource_group.azurerm.location
 resource_group_name          = azurerm_resource_group.azurerm.name
 ip_configuration {
  name ="internal"
  subnet_id= azurerm_subnet.subnet.id
  private_ip_address_allocation ="Dynamic"
           
 }

}
# virtual machine creation 
resource "azurerm_windows_virtual_machine" "windows-vm"{
name                         = var.vm-name
 resource_group_name          = azurerm_resource_group.azurerm.name
 location = azurerm_resource_group.azurerm.location
size=var.vm-size
admin_username = var.user-name
admin_password = var.password
network_interface_ids = [azurerm_network_interface.windows-nic.id]

# os-disk creation
os_disk {
  caching=var.caching
  storage_account_type=var.storage-account-type
}
# image creation
source_image_reference {
  publisher=var.publisher
  offer=var.offer
  sku=var.sku
  version=var.windows-version
}
}