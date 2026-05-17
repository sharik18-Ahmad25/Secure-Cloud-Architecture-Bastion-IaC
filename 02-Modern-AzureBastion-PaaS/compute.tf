# 1. Network Interface (NIC) for Private VM
resource "azurerm_network_interface" "vm_nic" {
  name                = "nic-private-vm"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vm_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

# 2. Private Linux Virtual Machine
resource "azurerm_linux_virtual_machine" "private_vm" {
  name                = "vm-secure-workload"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_DC1ds_v3"
  admin_username      = var.admin_username
  admin_password      = var.admin_password # Upar variable se dynamic uthayege
  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.vm_nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}