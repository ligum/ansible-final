
variable "name_of_subnet_for_web_app" {
  default = "publicSubNetWebApp"
}

variable "location" {
  default = "northeurope"
}

variable "name_of_subnet_for_database" {
  default = "privetSubNetDataBase"
}


variable "resource_group_name" {
  default = "production-ansible"
}

variable "name_of_public_ip" {
  default = "myPublicIP1"

}

variable "name_of_nsg_web" {
  default = "NetworkSecurityGroup_app"

}