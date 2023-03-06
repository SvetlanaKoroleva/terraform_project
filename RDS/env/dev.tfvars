  region               = "us-east-1"
  allocated_storage    = 20
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  publicly_accessible  = true
    
  tags = {
      Name = "main"
  }