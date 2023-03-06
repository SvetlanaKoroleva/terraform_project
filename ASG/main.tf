resource "aws_launch_template" "foobar" {
  name_prefix   = var.name_prefix
  image_id      = var.image_id
  instance_type = var.instance_type
}


resource "aws_autoscaling_group" "bar" {
  vpc_zone_identifier = var.subnets
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size

  launch_template {
    id      = aws_launch_template.foobar.id
    version = "$Latest"
  }
}

# Create a new load balancer
resource "aws_elb" "bar" {
  name               = "foobar-terraform-elb"
  subnets = var.subnets

#   access_logs {
#     bucket        = "foo"
#     bucket_prefix = "bar"
#     interval      = 60
#   }

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

#   listener {
#     instance_port      = 8000
#     instance_protocol  = "http"
#     lb_port            = 80
#     lb_protocol        = "http"
#     ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
#  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "TCP:80"
    interval            = 30
  }

#   instances                   = [aws_instance.foo.id]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "foobar-terraform-elb"
  }
}

resource "aws_autoscaling_attachment" "asg_attachment_bar" {
  autoscaling_group_name = aws_autoscaling_group.bar.id
  elb                    = aws_elb.bar.id
}