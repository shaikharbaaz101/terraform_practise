// prod
module "webserver_module_prod" {
  source = "./modules/webserver"
  instancetype = "t2.large"
  instancename = "prod_webserver"
}

// dev
module "webserver_module_dev" {
  source = "./modules/webserver"
  instancetype = "t2.medium"
  instancename = "dev_webserver"
}