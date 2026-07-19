resource "aws_lb_target_group" "web" {

  name = "prod-web-tg"

  port = 80

  protocol = "HTTP"

  target_type = "instance"

  vpc_id = aws_vpc.main.id

  health_check {

    enabled = true

    path = "/"

    protocol = "HTTP"

    matcher = "200"

    interval = 30

    timeout = 5

    healthy_threshold = 2

    unhealthy_threshold = 2

  }

  tags = {

    Name = "prod-web-target-group"

  }

}