# AWS Subnets

## What is a Subnet?

A subnet is a logical subdivision of a VPC.

---

Project Subnets

Public Subnet A

10.0.1.0/24

Public Subnet B

10.0.2.0/24

Private Subnet A

10.0.3.0/24

Private Subnet B

10.0.4.0/24

---

Public Subnet

Receives Public IP.

Examples

ALB

NAT Gateway

---

Private Subnet

No Public IP.

Examples

EC2

Database

EKS Worker Nodes

---

Availability Zones

ap-south-1a

ap-south-1b

---

Interview Questions

Difference between Public and Private Subnet?

What is Availability Zone?

Why deploy across multiple AZs?

What does map_public_ip_on_launch do?