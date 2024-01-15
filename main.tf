resource "azurerm_resource_group" "rgtest" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "testvnet" {
  name                = var.virtual_network_name
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name

}

/*resource "azurerm_subnet" "subnet1" {
  name                 = "subnet-1"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.0.1.0/24"]

  }

  resource "azurerm_network_interface" "tesnic" {
  name                = "test-NIC"
  location            = var.location
  resource_group_name = var.resource_group_name


ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "static"
  }
}

resource "azurerm_windows_virtual_machine" "DevopVM" {
  name                = "Devop-VM"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = "Standard_B2ms"
  admin_username      = "adminuser"
  admin_password      = "Ibrahim@1997"
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

resource "azurerm_network_security_group" "NSG" {
  name                = "TestSecurityGroup1"
  location            = var.location
  resource_group_name = var.virtual_network_name
}

resource "azurerm_network_security_rule" "RDP" {
  name                        = "RDP"
  priority                    = 100
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "3389"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.TestSecurityGroup1.name
}*/


/*resource "azurerm_storage_account" "teststorage" {
  name                     = var.storageaccountname
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on = [ azurerm_resource_group.rgtest ]
  }


resource "azurerm_storage_container" "terraform" {
  name                  = "terraform"
  storage_account_name  = var.storageaccountname
  container_access_type = "private"
  depends_on = [ azurerm_storage_account.teststorage ]
}*/
