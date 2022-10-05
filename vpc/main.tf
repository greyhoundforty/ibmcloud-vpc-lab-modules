module "vpc" {
  source = "terraform-ibm-modules/vpc/ibm//modules/vpc"

  create_vpc                  = true
  vpc_name                    = "${var.vpc_name}-vpc"
  resource_group_id           = var.resource_group_id
  classic_access              = var.classic_access
  default_address_prefix      = var.default_address_prefix
  default_network_acl_name    = "${var.vpc_name}-default-network-acl"
  default_security_group_name = "${var.vpc_name}-default-security-group"
  default_routing_table_name  = "${var.vpc_name}-default-routing-table"
  vpc_tags                    = ["region:${var.vpc_region}", "vpc:${var.vpc_name}-vpc"]
  address_prefixes            = var.address_prefixes
  locations                   = ["${var.vpc_region}-1", "${var.vpc_region}-2", "${var.vpc_region}-3"]
  subnet_name                 = "${var.vpc_name}-subnet"
  number_of_addresses         = var.number_of_addresses
  create_gateway              = var.create_gateway
  public_gateway_name         = "${var.vpc_name}-public-gateway"
  gateway_tags                = ["region:${var.vpc_region}", "vpc:${var.vpc_name}-vpc"]
}