variable "admin_username" {
  default     = "vova"
  description = "theusername"
}

variable "admin_password" {
  default     = "Vladimir1234"
  description = "thepassword"
}


output "admin_username" {
  value = "vova"
}

output "admin_password" {
  value = "Vladimir1234"
}