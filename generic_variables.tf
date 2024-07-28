variable "aws_region" {
    description = "AWS Region where resources has to be created"
    type = string
    default = "us-east-1"
}

variable "environment" {
    description = "Environment variable used as a prefix"
    type = string
    default = "dev"
}

variable "business_division" {
    description = "Business Division in the large organization this Infrastructure belongs"
    type = string
    default = "HR"
}