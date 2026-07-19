# Security Groups

## What is a Security Group?

A Security Group is a stateful virtual firewall attached to AWS resources.

---

Controls

Inbound Rules

Outbound Rules

---

Security Groups Created

ALB Security Group

Allows

HTTP

HTTPS

From

0.0.0.0/0

---

EC2 Security Group

Allows HTTP

Only from ALB Security Group.

---

Security Group vs NACL

Security Group

Stateful

Instance Level

Allow Only

---

NACL

Stateless

Subnet Level

Allow and Deny

---

Interview Questions

What is Security Group?

Why is Security Group Stateful?

Difference between SG and NACL?

Why allow traffic only from ALB Security Group?

Why not allow 0.0.0.0/0 directly to EC2?