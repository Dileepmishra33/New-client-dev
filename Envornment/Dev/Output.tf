module "resource_group" {
  source = "../../Child_modules/Resource group"
  rg=var.rg 
}
module "vnet" {
  source     = "../../Child_modules/Virtual_network"
  depends_on = [module.resource_group]
  vnet=var.vnet
  
}
module "subnet" {
  source = "../../Child_modules/Subnet"
  depends_on = [ module.vnet ]
  subnet=var.subnet
}

  