# #----------- Route Table - Virtual Network Association
resource "azurerm_subnet_route_table_association" "subnet_route_table_association" {
    for_each             = local.subnet_list
        subnet_id        = lookup(var.subnet_output,each.key,null) == null ? null : lookup(var.subnet_output,each.key,null).id
        route_table_id   = lookup(var.route_table_output,each.value.route_table.name,null) == null ? null : ( lookup(var.route_table_output,each.value.route_table.name,null).resource_group_name == each.value.route_table.resource_group_name ? lookup(var.route_table_output,each.value.route_table.name,null).id :null)
}