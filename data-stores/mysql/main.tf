resource "aws_db_instance" "example" {
  identifier_prefix   = var.db_prefix
  engine              = "mysql"
  allocated_storage   = var.allocated_storage
  instance_class      = var.instance_class
  skip_final_snapshot = true
  
  username            = var.db_username
  password            = var.db_password
}