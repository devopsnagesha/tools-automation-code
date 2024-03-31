module "tools" {
  for_each = var.tools
  source   = "./module"

  tools_name    = each.key
  instance_type = each.value["instance_type"]

  zone_id = var.zone_id
}