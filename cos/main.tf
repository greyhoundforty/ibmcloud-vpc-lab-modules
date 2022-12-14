module "cos" {
  version = "1.4.1"
  source = "terraform-ibm-modules/cos/ibm//modules/instance"
  bind_resource_key = var.bind_resource_key
  service_name      = var.cos_instance_name
  resource_group_id = var.resource_group_id
  plan              = var.plan
  region            = var.region
  service_endpoints = var.service_endpoints
  parameters        = var.parameters
  tags              = ["blueprint"]
  create_timeout    = var.create_timeout
  update_timeout    = var.update_timeout
  delete_timeout    = var.delete_timeout
  resource_key_name = "${var.cos_instance_name}-key"
  role              = var.role
  key_tags          = ["blueprint"]
  key_parameters    = var.key_parameters
}
