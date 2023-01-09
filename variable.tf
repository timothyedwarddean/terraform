# Set variable on VPC.

variable "vpc-cidr" {
    default = "10.0.0.0/16"
    description = "VPC CIDR Block"
    type = string
}

# Set variable on public subnets.

variable "public-subnet-1-cidr" {
    default = "10.0.1.0/24"
    description = "Public Subnet 1 CIDR Block"
    type = string
}

variable "public-subnet-2-cidr" {
    default = "10.0.2.0/24"
    description = "Public Subnet 2 CIDR Block"
    type = string
}

# Set variable on private subnets.

variable "private-subnet-1-cidr" {
    default = "10.0.10.0/24"
    description = "Private Subnet 1 CIDR Block"
    type = string
}

variable "private-subnet-2-cidr" {
    default = "10.0.20.0/24"
    description = "Private Subnet 2 CIDR Block"
    type = string
}

variable "private-subnet-3-cidr" {
    default = "10.0.30.0/24"
    description = "Private Subnet 3 CIDR Block"
    type = string
}

variable "private-subnet-4-cidr" {
    default = "10.0.40.0/24"
    description = "Private Subnet 4 CIDR Block"
    type = string
}

variable "private-subnet-5-cidr" {
    default = "10.0.50.0/24"
    description = "Private Subnet 5 CIDR Block"
    type = string
}