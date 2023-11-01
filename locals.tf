locals {  
    route_table = {for route_table in var.association_list  : route_table.route_table_name => route_table }
}