output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "alb_dns_name" {
  description = "Application Load Balancer DNS"
  value       = aws_lb.web.dns_name
}

output "launch_template_id" {
  description = "Launch Template ID"
  value       = aws_launch_template.web.id
}

output "autoscaling_group_name" {
  description = "Auto Scaling Group Name"
  value       = aws_autoscaling_group.web.name
}

output "target_group_arn" {
  description = "Target Group ARN"
  value       = aws_lb_target_group.web.arn
}