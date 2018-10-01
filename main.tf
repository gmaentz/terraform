#Connect to AWS
provider "aws" {
  region = "us-west-2"
}

#Build out my VPC
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "1.37.0"

  name = "dev"

  cidr = "10.0.0.0/16"

  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  database_subnets = ["10.0.201.0/24", "10.0.202.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Owner       = "user"
    Environment = "dev"
  }

  vpc_tags = {
    Name = "dev-environment"
  }
}

#Deploy the Fleet
module "webserver_cluster" {
  source = "github.com/gmaentz/terraform/modules/services/webserver-cluster"
  cluster_name = "webserver-dev"
  ami = "ami-a9d09ed1"
  key_name = "MyOregonSSH"
  instance_type = "t2.micro"
  min_size = 2
  max_size = 2
  vpc_id = "${module.vpc.vpc_id}"
  subnet_ids = ["${module.vpc.public_subnets}"]
}
module "cloud_watch" {
  source = "github.com/gmaentz/terraform/modules/services/cloud-watch"
  sms_number = "${var.sms_number}"
  autoscaling_group = "${module.webserver_cluster.asg_name}"
}