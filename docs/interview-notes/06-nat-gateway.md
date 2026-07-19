# NAT Gateway

## What is NAT Gateway?

A managed AWS service that allows private subnet resources to access the Internet without exposing them to inbound Internet traffic.

---

Traffic Flow

Private EC2

↓

Private Route Table

↓

NAT Gateway

↓

Internet Gateway

↓

Internet

---

Elastic IP

NAT Gateway requires an Elastic IP.

---

Why NAT Gateway is in Public Subnet?

Because it needs Internet access through the Internet Gateway.

---

Interview Questions

What is NAT Gateway?

Difference between NAT Gateway and Internet Gateway?

Why use NAT Gateway?

Can Internet directly access Private EC2?

Why does NAT Gateway require Elastic IP?