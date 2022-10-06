variable "vpc_cidr" {
  description = "vpc_cidr"
  default     = "10.0.0.0/21"
}

variable "vpc_id" {
  description = "vpc_id"
  default     = "vpc-0469926202f01dd39"
}

variable "private_subnet_id" {
  description = "subnet_id"
  default     = "subnet-0fd2f9f72c0b9781b"
}

variable "nickname" {
  description = "nickname"
  default     = ""
}

variable "environment" {
  description = "environment"
  default     = "dev"
}

# variable "prefix" {
#  description = "prefix"
#  default     = "kisujin"
# }

# variable "region" {
#  description = "region"
#  default     = "ap-northease-2"
# }
