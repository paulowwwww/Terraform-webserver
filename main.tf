
#module from server's
module "servidor" {
  source         = "./servidor"
  subnet_id      = module.network.subnet_1a_id
  security_group = [module.network.security_group_public]
}

#module from network
module "network" {
  source = "./network"
}

#module from backend
module "backend" {
  source = "./backend"
}

