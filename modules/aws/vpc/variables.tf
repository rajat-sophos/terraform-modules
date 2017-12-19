variable "name" {
  description = "Name to be used on all the resources as identifier"
  default     = "terraform"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.11.0.0/16"
}

variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC"
  default     = "default"
}

variable "enable_dns_hostnames" {
  description = "should be true if you want to use private DNS within the VPC"
  default     = true
}

variable "enable_dns_support" {
  description = "should be true if you want to use private DNS within the VPC"
  default     = true
}

variable "private_subnets_list" {
  description = "A list of private subnets inside the VPC."
  default     = ["10.11.1.0/24", "10.11.2.0/24", "10.11.3.0/24"]
}

variable "public_subnets_list" {
  description = "A list of public subnets inside the VPC."
  default     = ["10.11.201.0/24", "10.11.202.0/24", "10.11.203.0/24"]
}

variable "azs" {
  description = "A list of Availability zones in the region"
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "map_public_ip_on_launch" {
  description = "should be false if you do not want to auto-assign public IP on launch"
  default     = true
}

variable "public_propagating_vgws" {
  description = "A list of VGWs the public route table should propagate."
  default     = []
}

variable "enable_nat_gateway" {
  description = "should be true if you want to provision NAT Gateways for each of your private networks"
  default     = true
}

variable "enable_firewall" {
  description = "should be true if you are using a firewall to NAT traffic for the private subnets"
  default     = false
}

variable "single_nat_gateway" {
  description = "should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  default     = false
}

variable "private_propagating_vgws" {
  description = "A list of VGWs the private route table should propagate."
  default     = []
}

variable "fw_network_interface_id" {
  description = "Firewall network interface id"
  default     = []
}

variable "enable_s3_endpoint" {
  description = "should be true if you want to provision an S3 endpoint to the VPC"
  default     = false
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}
