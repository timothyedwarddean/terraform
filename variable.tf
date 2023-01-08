variable "vpc-cidr" {
    default = "10.0.0.0/16"
    description = "VPC CIDR Block"
    type = string
}

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