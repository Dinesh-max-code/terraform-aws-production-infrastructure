# Terraform Interview Notes

## What is Terraform?

Terraform is an open-source Infrastructure as Code (IaC) tool developed by HashiCorp. It allows infrastructure to be created, modified, and destroyed using code instead of manual configuration.

---

## Why Terraform?

- Infrastructure as Code
- Automation
- Multi-Cloud Support
- Version Control
- Reusable Infrastructure
- State Management

---

## Terraform Workflow

terraform init

↓

terraform fmt

↓

terraform validate

↓

terraform plan

↓

terraform apply

↓

terraform destroy

---

## Terraform Files

provider.tf

Configures AWS Provider.

versions.tf

Terraform and Provider versions.

variables.tf

Input Variables.

terraform.tfvars

Actual Variable Values.

outputs.tf

Displays Outputs.

---

## Important Commands

terraform init

Downloads Providers.

terraform fmt

Formats Code.

terraform validate

Checks Syntax.

terraform plan

Shows Execution Plan.

terraform apply

Creates Infrastructure.

terraform destroy

Deletes Infrastructure.

terraform state list

Lists Managed Resources.

---

## Terraform State

terraform.tfstate

Stores the current state of infrastructure.

Never commit this file to GitHub.

---

## Infrastructure Drift

Infrastructure Drift happens when infrastructure is changed outside Terraform.

Example

Deleting a VPC manually from AWS Console.

Terraform detects it during terraform plan.

---

## Interview Questions

What is Terraform?

What is IaC?

What is Terraform State?

What is Infrastructure Drift?

Difference between Plan and Apply?

Difference between Validate and Plan?

What happens during terraform init?