variable "vpc_id" {
   description = "The name of the VPC"
 }
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default     = 80
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
}

variable "subnet_ids" {
   type = "list"
   description = "The name of the public subnets "
 }

variable "ami" {
   description = "The name of the ami"
 }

variable "key_name" {
   description = "The name of the ami key"
 }

# variable "subnet_private_name" {
#   description = "The name of the private subnets "
# }

# variable "db_remote_state_bucket" {
#  description = "The name of the S3 bucket for the database's remote state"
# }

# variable "db_remote_state_key" {
#  description = "The path for the database's remote state in S3"
# }

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
}
