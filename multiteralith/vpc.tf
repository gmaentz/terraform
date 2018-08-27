#Connect to AWS
provider "aws" {  
   region = "${var.region}"
}

#Build out my VPC
module "vpc" {  
   source = "terraform-aws-modules/vpc/aws"
   name = "${var.environment}" 
   cidr = "${var.cidr}"
   
   azs               = ["${var.zones}"]
   private_subnets   = ["${var.private_subnets}"] 
   public_subnets    = ["${var.public_subnets}"] 
   database_subnets  = ["${var.database_subnets}"] 
   
   enable_nat_gateway = true
   single_nat_gateway = true  

   tags = {
     Owner       = "${var.owner}"
     Environment = "${var.environment}" 
   }

   vpc_tags = {
     Name = "${var.environment} - environment"
   }
}
