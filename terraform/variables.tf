variable "region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "dynatrace-eks-cluster"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  sensitive = true
}
