variable "region" {
    description = "The AWS region to deploy this module in"
    type = string
    default = "eu-west-1"
}

variable "cidr" {
    description = "The CIDR range to be used for the VPC"
    type = string
}

variable "aws_account_name" {
    description = "The AWS account name, as known by the Aviatrix controller"
    type = string
}

variable "instance_size" {
    description = "AWS Instance size for the Aviatrix gateways
    type = string
    default = "t2.micro"
}

variable "ha_gw" {
    description = "Boolean to determine if module will be deployed in HA or single mode"
    type = bool
    default = false
}