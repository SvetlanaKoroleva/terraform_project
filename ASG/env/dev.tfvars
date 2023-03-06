region           = "us-east-1"
name_prefix      = "foobar"
image_id         = "ami-006dcf34c09e50022"
instance_type    = "t2.micro"
desired_capacity = 1
max_size         = 99
min_size         = 1

tags = {
  Name = "main"
}