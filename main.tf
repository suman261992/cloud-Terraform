terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.85.0"
    }
  }
 cloud {  
    organization = "su-sush" 
    workspaces { 
      name = "cloud-Terraform" 
    } 
  } 
}
provider "aws" {
  region="us-east-2"
}
resource "aws_vpc" "main1" {
  cidr_block = "192.168.2.0/24"
 tags = {Name = "main1"}
}
resource "aws_vpc" "main2" {
  cidr_block = "192.168.3.0/24"
 tags = {Name = "main2"}
}
resource "aws_vpc" "main3" {
  cidr_block = "192.168.5.0/24"
 tags = {Name = "suman"}
}
