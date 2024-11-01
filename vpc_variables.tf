variable "vpc_name" {
    description = "VPC name"
    type = string
    default = "my_vpc"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  description = "VPC Availablity Zones"
  type = list(string)
  default = [ "us-east-1a", "us-east-1b" ]
}

variable "vpc_public_subnets" {
    description = "VPC Public Subnets"
    type = list(string)
    default = [ "10.0.101.0/24", "10.0.102.0/24" ]
}

variable "vpc_private_subnets" {
    description = "VPC Private Subnets"
    type = list(string)
    default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}

variable "vpc_database_subnets" {
    description = "VPC Database Subnets"
    type = list(string)
    default = [ "10.0.1051.0/24", "10.0.152.0/24" ]
}

variable "vpc_create_database_subnet_group" {
  description = "VPC Create Database Subnet Group"
  type = bool
  default = true
}

variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route table"
  type = bool
  default = true
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateway"
  type = bool
  default = true
}

variable "vpc_single_nat_gateway" {
  description = "Enable Single NAT Gateway"
  type = bool
  default = true
}