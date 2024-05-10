resource "aws_lb" "my_lb" {
  name               = "my-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.elb_sg.id]
 subnets = [for subnet in aws_subnet.my_subnet : subnet.id]

tags = {
    Name = "my-load-balancer"
  }
}
