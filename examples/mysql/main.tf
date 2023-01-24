provider "aws" {
  region = "us-west-2"
}

module "mysql" {
  source = "github.com/rvivian/modules//data-stores/mysql"

  db_prefix = var.db_prefix
  allocated_storage = 10
  instance_class = "db.t2.micro"
  db_name = "example_database"

  db_username = "admin"
  db_password = var.db_password
  skip_final_snapshot = true
}