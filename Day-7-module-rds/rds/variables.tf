variable "allocated_storage" {}
variable "db_name" {}
variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "username" {}
variable "password" {}
variable "parameter_group_name" {}
variable "skip_final_snapshot" { default = true }
variable "publicly_accessible" { default = false }
variable "multi_az" { default = false }
variable "storage_type" { default = "gp2" }
variable "vpc_security_group_ids" { type = list(string) }
variable "db_subnet_group_name" {}
variable "backup_retention_period" { default = 7 }
variable "deletion_protection" { default = true }
variable "tags" { type = map(string) }
