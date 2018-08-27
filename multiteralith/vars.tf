variable "region" {
  description = "The name of the region to deploy the VPC"
}

variable "environment" {
  description = "The name of the environment (ex. DEV, STAGING, PROD)"
}

variable "cidr" {
  description = "The cidr block for the VPC"
}

variable "zones" {
  description = "The availabiity zones to utilize in the VPC"
  type = "list"
}

variable "private_subnets" {
  description = "The availabiity zones to utilize in the VPC"
  type = "list"
}

variable "public_subnets" {
  description = "The availabiity zones to utilize in the VPC"
  type = "list"
}

variable "database_subnets" {
  description = "The availabiity zones to utilize in the VPC"
  type = "list"
}

variable "owner" {
  description = "The availabiity zones to utilize in the VPC"
}

variable "cluster_name" {
  description = "The availabiity zones to utilize in the VPC"
}

variable "ami" {
  description = "The availabiity zones to utilize in the VPC"
}

variable "key_name" {
  description = "The availabiity zones to utilize in the VPC"
}

variable "instance_type" {
  description = "The availabiity zones to utilize in the VPC"
}

variable "min_size" {
  description = "The availabiity zones to utilize in the VPC"
}

variable "max_size" {
  description = "The availabiity zones to utilize in the VPC"
}

####
#Map of Images
variable "images" {
  type    = "map"
  default = {
    "us-east-1" = "image-1234"
    "us-west-2" = "image-4567"
  }
}
