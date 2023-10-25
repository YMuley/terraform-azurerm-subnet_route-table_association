locals {  
    subnet_list = {for subnet in var.subnet_list  : format("%s/%s",subnet.virtual_network_name,subnet.subnet_name) => subnet }
}