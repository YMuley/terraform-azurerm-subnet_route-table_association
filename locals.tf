locals {
  route_table = { for route_table in var.subnet_route_table_association_list : format("%s-%s-%s", route_table.route_table_name, route_table.subnet_name, route_table.virtual_network_name) => route_table }
}
