# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = "${module.vpc.vpc_id}"
}

# Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = ["${module.vpc.private_subnets}"]
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = ["${module.vpc.public_subnets}"]
}

# NAT gateways
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = ["${module.vpc.nat_public_ips}"]
}

output "elb_dns_name" {
  value = "${module.webserver_cluster.elb_dns_name}"
}

output "asg_name" {
  value = "${module.webserver_cluster.asg_name}"
}

output "elb_security_group_id" {
  value = "${module.webserver_cluster.elb_security_group_id}"
}

/* #IPs of Worker Instances
output "server_private-ips" {
  value = "${module.webserver_cluster.worker_private_ips}" 
}

output "server_public-ips" {
  value = "${module.webserver_cluster.worker_public_ips}" 
}
*/