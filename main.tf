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
      name = "tfcloudcli" 
    } 
  } 
}

provider "aws" {
  region="us-east-1"
}
resource "aws_vpc" "main1" {
  cidr_block = "192.168.2.0/24"
 tags = {Name = "dev-vcp"}
}
