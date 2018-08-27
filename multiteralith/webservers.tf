#Build Out the Fleet of Servers, AutoScaling Group & Load Balancer
module "webserver_cluster" {
  source = "github.com/gmaentz/terraform/modules/services/webserver-cluster"
  cluster_name		= "${var.cluster_name}"
  ami               = "${var.ami}"
  key_name          = "${var.key_name}"
  instance_type		= "${var.instance_type}"
  min_size			= "${var.min_size}"
  max_size			= "${var.max_size}"

  vpc_id     = "${module.vpc.vpc_id}"
  subnet_ids = ["${module.vpc.public_subnets}"]
}