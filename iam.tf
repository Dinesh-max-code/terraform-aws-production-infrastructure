resource "aws_iam_role" "ec2_role" {

  name = "prod-ec2-role"

  assume_role_policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {

        Effect = "Allow"

        Principal = {

          Service = "ec2.amazonaws.com"

        }

        Action = "sts:AssumeRole"

      }

    ]

  })

  tags = {

    Name = "prod-ec2-role"

  }

}

resource "aws_iam_role_policy_attachment" "ssm" {

  role = aws_iam_role.ec2_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"

}


resource "aws_iam_instance_profile" "ec2_profile" {

  name = "prod-ec2-profile"

  role = aws_iam_role.ec2_role.name

}