resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = var.db_intance_type
  username             = "foo"
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

