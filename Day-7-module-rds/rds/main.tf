resource "aws_db_instance" "this" {
  allocated_storage      = var.allocated_storage
  db_name                = var.db_name
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  username               = var.username
  password               = var.password
  parameter_group_name   = var.parameter_group_name
  skip_final_snapshot    = var.skip_final_snapshot
  publicly_accessible    = var.publicly_accessible
  multi_az               = var.multi_az
  storage_type           = var.storage_type
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = var.db_subnet_group_name
  backup_retention_period = var.backup_retention_period
  deletion_protection    = var.deletion_protection
  tags                   = var.tags
}
