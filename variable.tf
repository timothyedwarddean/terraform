# Set variable on VPC.

variable "vpc_cidr" {
    default = "10.0.0.0/16"
    description = "VPC CIDR Block"
    type = string
}

# Set variable on public subnets.

variable "public_subnet_1_cidr" {
    default = "10.0.1.0/24"
    description = "Public Subnet 1 CIDR Block"
    type = string
}

variable "public_subnet_2_cidr" {
    default = "10.0.2.0/24"
    description = "Public Subnet 2 CIDR Block"
    type = string
}

# Set variable on private subnets.

variable "private_subnet_1_cidr" {
    default = "10.0.10.0/24"
    description = "Private Subnet 1 CIDR Block"
    type = string
}

variable "private_subnet_2_cidr" {
    default = "10.0.20.0/24"
    description = "Private Subnet 2 CIDR Block"
    type = string
}

variable "private_subnet_3_cidr" {
    default = "10.0.30.0/24"
    description = "Private Subnet 3 CIDR Block"
    type = string
}

variable "private_subnet_4_cidr" {
    default = "10.0.40.0/24"
    description = "Private Subnet 4 CIDR Block"
    type = string
}

variable "private_subnet_5_cidr" {
    default = "10.0.50.0/24"
    description = "Private Subnet 5 CIDR Block"
    type = string
}