data "aws_ami" "amazon_linux" {

  most_recent = true

  owners = ["amazon"]

  filter {
    name = "name"

    values = ["al2023-ami-*-x86_64"]
  }

}

resource "aws_launch_template" "web" {

  name_prefix = "prod-web-"

  image_id = data.aws_ami.amazon_linux.id

  instance_type = "t2.micro"

  vpc_security_group_ids = [

    aws_security_group.ec2.id

  ]

  iam_instance_profile {

    name = aws_iam_instance_profile.ec2_profile.name

  }

  user_data = base64encode(file("${path.module}/scripts/user-data.sh"))

  tag_specifications {

    resource_type = "instance"

    tags = {

      Name = "prod-web-server"

    }

  }

}