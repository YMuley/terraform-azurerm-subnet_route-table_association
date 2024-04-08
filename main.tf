# #----------- Route Table - Virtual Network Association
resource "azurerm_subnet_route_table_association" "subnet_route_table_association" {
  for_each       = local.route_table
  route_table_id = var.route_table_output[each.value.route_table_name].id
  subnet_id      = var.subnet_output[format("%s/%s", each.value.virtual_network_name, each.value.subnet_name)].id
}
