# Example For Using Terraform to Deploy a auto-scaling server fleet in AWS, across regions
This Terraform configuration provides an example that is meant to be followed along with the [Using Terraform to Up Your Automation Game](http://www.maentz.net/pensieve/xny7mfbtg7w37ynstrd5jsympl9lc9?rq=terraform) blog series for deploying a fleet of auto-scaling servers.

## Mission
Our mission is to create and deploy a set of auto-scaling web servers, front ended by a load balancer for our development, staging and production environments across 3 different AWS regions.  We will utilize a modular approach to create and build our infrastructure, and reuse our code when possible to keep things simple.

## Introduction
This Terraform configuration will create an AWS Virtual Private cloud and utilize the modular approach of Terraform to add the prober subnets, gateways, route tables, ELB, auto-scaling groups and EC2 webserver instances across the region.  The enviornment will be monitored using CloudWatch with alerts set to the mobile number of your choice via SNS. The diagram below depicts the development environment to be deployed in the AWS us-west-2 region, including private, public and database subnets across 3 availability zones.

![Fleet Deployment  ](https://github.com/gmaentz/terraform/blob/master/_docs/terraformdeployment.png?raw=true)

## Instructions
As an aid, the blog series [Using Terraform to Up Your Automation Game](http://www.maentz.net/pensieve/xny7mfbtg7w37ynstrd5jsympl9lc9?rq=terraform) showcases the modular buildout of the VPC, server fleet, and multi-region buildout for development, staging and production.  In additon it shows the monitoring and notifications used for alerting when the environment is idle and can be destroyed.

## VPC

## Fleet of Webservers

## Watch with CloudWatch and Notify with SNS to your mobile phone

## Destroying
