# #----------- Route Table - Virtual Network Association
resource "azurerm_subnet_route_table_association" "subnet_route_table_association" {
  for_each       = local.route_table
  route_table_id = var.route_table_output[each.value.route_table_name].id
  subnet_id = var.subnet_output[each.value.subnet_id].id
}
