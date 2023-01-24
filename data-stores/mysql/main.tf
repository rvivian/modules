resource "aws_db_instance" "example" {
  identifier_prefix = var.db_prefix
  engine            = "mysql"
  allocated_storage = var.allocated_storage
  instance_class    = var.instance_class
  name              = var.db_name
  username          = var.db_username

  skip_final_snapshot = var.skip_final_snapshot

  # How should we set the password?
  password = var.db_password
}