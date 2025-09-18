
variable "ports" {
  type = list(number)
  default = [ 22, 443, 8080, 9000, 80 ]
}

variable "network" {
  type = string
  default = "lokesh-network"
}

variable "name" {
  type = list(string)
  default = [ "firewall-one", "firewall-two", "fire-three" ]
}

