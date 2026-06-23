resource "aws_db_subnet_group" "mysql_subnet" {

  name = "mysql-subnet-group"

  subnet_ids = [
    aws_subnet.public1.id,
    aws_subnet.public2.id
  ]
}

resource "aws_db_instance" "mysql" {

  identifier     = "dynatrace-mysql"
  engine         = "mysql"
  engine_version = "8.0"

  instance_class = "db.t3.micro"

  storage_type = "gp3"
  allocated_storage = 20

  db_name  = "appdb"
  username = var.db_username
  password = var.db_password

  skip_final_snapshot = true
  publicly_accessible = false

  db_subnet_group_name = aws_db_subnet_group.mysql_subnet.name

  vpc_security_group_ids = [
    aws_security_group.rds_sg.id
  ]
}
