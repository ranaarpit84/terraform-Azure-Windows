# windows 2022 variables

# subscription id of provider
variable "subscription-id" {
    type = string
    default = "21310e70-db4d-4153-90c3-7fa4adec17d3"
}
# client id of provider
variable "client-id" {
    type = string
    default = "f33a139d-3c04-43f6-bc25-1e65acc7afe5"
}
# client secret value of provider
variable "client-secret" {
    type = string
    default = "8-78Q~AlUeZeLMlTPCVIWNuVQPMmNNhuQaJJ7c0J"
}
# tenant id of provider
variable "tenant-id" {
    type = string
    default = "80c19f82-3727-43db-8296-5d2d8c2dda7f"
}

# value will come from the payload
variable "location" {
    type = string
    description = "location of the resource"
    default = "east us"
}
# value will come from the payload
variable "rsg-name" {
    type = string
    description = "name of the resource"
    default =  "Windows-Rs"
}
# value will come from the payload
variable "vnet-name" {
    type = string
    description = "name of vnet"
    default = "windows-vnet"
}
# value will come from the payload
variable "subnet-name" {
    type = string
    description = "name of the subnet"
    default = "windows-subnet"
}
# value will come from the payload
variable "nic-name" {
    type = string
    description = "name of the network interface"
    default = "windows-nic"
}
# value will come from the payload
variable "vm-name" {
    type = string
    description = "name of the virtual machine"
    default = "windows-vm"
}
# value will come from the payload
variable "vm-size" {
    type = string
    description = "size of the vm"
    default = "Standard_F2"
}
# value will come from the payload
variable "caching" {
    type = string
    default = "ReadWrite"
}
# value will come from the payload
variable "storage-account-type"{
    type = string
    default = "Standard_LRS" 
}
# value will come from the payload
    variable "publisher" {
        type = string
        default = "MicrosoftWindowsServer"
    }
    # value will come from the payload
    variable "offer" {
        type = string
        default = "WindowsServer" 
    }
    # value will come from the payload
    variable "windows-version" {
        type = string
        default = "latest"
    }
     # value will come from the payload
    variable "sku" {
        type = string
        default = "2022-Datacenter"
    }
    # value will come from the Client 
    variable "user-name" {
        type = string
        default="adminuser"
    }

    # value will come from the Client
     variable "password" {
        type = string
        default = "Password@123"
    }
    
    