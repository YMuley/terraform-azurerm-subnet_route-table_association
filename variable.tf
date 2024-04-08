variable "subnet_route_table_association_list" {
  type        = list(any)
  default     = []
  description = "list of virtual network objects"
}

variable "subnet_output" {
  type        = map(any)
  default     = {}
  description = "list of Subnet objects"
}

variable "route_table_output" {
  type        = map(any)
  default     = {}
  description = "Map of route table objects"
}
