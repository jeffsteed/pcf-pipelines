variable "aws_vpc_PcfVpc" {}
variable "PcfVpcErtSubnet_az1" {}
variable "PcfVpcErtSubnet_az2" {}
variable "PcfVpcErtSubnet_az3" {}
variable "PcfVpcServicesSubnet_az1" {}
variable "PcfVpcServicesSubnet_az2" {}
variable "PcfVpcServicesSubnet_az3" {}
variable "PcfVpcInfraSubnet_az1" {}
variable "PcfVpcAccessSubnet_az1" {}
variable "PcfVpcPublicSubnet_az1" {}
variable "PcfVpcPublicSubnet_az2" {}
variable "PcfVpcPublicSubnet_az3" {}
variable "PcfVpcRdsSubnet_az1" {}
variable "PcfVpcRdsSubnet_az2" {}
variable "PcfVpcRdsSubnet_az3" {}
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_cert_arn" {}
variable "aws_key_name" {}
variable "db_master_username" {}
variable "db_master_password" {}
variable "prefix" {}
variable "opsman_ami" {}
variable "aws_region" {}
variable "az1" {}
variable "az2" {}
variable "az3" {}
variable "access_az1" {}
variable "jumpbox_cidr" {}
variable "vpn_cidr" {}
variable "shared_services_cidr" {}
variable "pcf_opsman_ip" {}
variable "prefix" {}
variable "log_bucket_target" {}

/*
* used for configuring ingress rules to ops manager vm
*/
variable "opsman_allow_ssh" {default = false}
variable "opsman_allow_https" {default = false}
variable "opsman_allow_ssh_cidr_ranges" {
    type = "list"
    default = ["0.0.0.0/32"]
}
variable "opsman_allow_https_cidr_ranges" {
    type = "list"
    default = ["0.0.0.0/32"]
}


variable "opsman_instance_type" {
    description = "Instance Type for OpsMan"
    default = "m3.large"
}
variable "nat_instance_type" {
    description = "Instance Type for NAT instances"
    default = "t2.medium"
}
variable "db_instance_type" {
    description = "Instance Type for RDS instance"
    default = "db.m3.large"
}

variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
    default = "10.0.0.0/16"
}
/*
  Availability Zone 1
*/

# public subnet
variable "public_subnet_cidr_az1" {
    description = "CIDR for the Public Subnet 1"
    default = "10.0.0.0/24"
}
# ERT subnet
variable "ert_subnet_cidr_az1" {
    description = "CIDR for the Private Subnet 1"
    default = "10.0.16.0/20"
}
# RDS subnet
variable "rds_subnet_cidr_az1" {
    description = "CIDR for the RDS Subnet 1"
    default = "10.0.3.0/24"
}
# Services subnet
variable "services_subnet_cidr_az1" {
    description = "CIDR for the Services Subnet 1"
    default = "10.0.64.0/20"
}

variable "nat_ip_az1" {
    default = "10.0.0.6"
}
variable "opsman_ip_az1" {
    default = "10.0.0.7"
}

/*
  Availability Zone 2
*/


variable "public_subnet_cidr_az2" {
    description = "CIDR for the Public Subnet 2"
    default = "10.0.1.0/24"
}
variable "ert_subnet_cidr_az2" {
    description = "CIDR for the Private Subnet 2"
    default = "10.0.32.0/20"
}
# RDS subnet
variable "rds_subnet_cidr_az2" {
    description = "CIDR for the RDS Subnet 2"
    default = "10.0.4.0/24"
}
# Services subnet
variable "services_subnet_cidr_az2" {
    description = "CIDR for the Services Subnet 2"
    default = "10.0.80.0/20"
}

variable "nat_ip_az2" {
    default = "10.0.1.6"
}

/*
  Availability Zone 3
*/
variable "public_subnet_cidr_az3" {
    description = "CIDR for the Public Subnet 3"
    default = "10.0.2.0/24"
}
variable "ert_subnet_cidr_az3" {
    description = "CIDR for the Private Subnet 3"
    default = "10.0.48.0/20"
}
# RDS subnet
variable "rds_subnet_cidr_az3" {
    description = "CIDR for the RDS Subnet 3"
    default = "10.0.5.0/24"
}
# Services subnet
variable "services_subnet_cidr_az3" {
    description = "CIDR for the Services Subnet 3"
    default = "10.0.96.0/20"
}

# Services subnet
variable "infra_subnet_cidr_az1" {
    description = "CIDR for the infrastructure"
    default = "10.0.6.0/24"
}

variable "nat_ip_az3" {
    default = "10.0.2.6"
}

