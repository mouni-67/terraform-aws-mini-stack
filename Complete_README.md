# 🚀 Terraform AWS Mini Infrastructure Project

## 📌 Overview

This project uses Terraform (Infrastructure as Code) to automatically provision AWS cloud resources.

Instead of manually creating resources in AWS console, we define everything in code and Terraform creates it automatically.

---

## 🎯 Project Goal

The goal of this project is to:

- Learn Infrastructure as Code (IaC)
- Automate AWS cloud provisioning
- Understand Terraform workflow
- Build modular cloud infrastructure
- Follow DevOps best practices

---

## ☁️ AWS Resources Created

This project provisions the following AWS infrastructure:

### 1️⃣ Networking
- VPC (Virtual Private Cloud)
- Public Subnet
- Internet Gateway
- Security Group (least privilege access)

### 2️⃣ Compute
- EC2 Instance (Ubuntu Server)
- Public IP for SSH access

### 3️⃣ Storage
- S3 Bucket for object storage

---

## 🏗️ Architecture Flow

Terraform Code → AWS Provider → AWS Resources (VPC, EC2, S3) → Outputs (IP, IDs)

---

## 📁 Project Structure

terraform-aws-mini-stack/

├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── backend.tf
│
├── modules/
│   ├── network/
│   ├── compute/
│
├── .github/workflows/
│   └── terraform.yml
│
└── README.md

---

## ⚙️ Prerequisites

Install the following:

- Terraform (v1+)
- AWS CLI
- Git
- AWS Free Tier account

---

## 🔐 AWS Configuration

Configure AWS credentials:

aws configure

Enter:
- AWS Access Key ID
- AWS Secret Access Key
- Default region: ap-south-1

---

## 🚀 How to Run This Project

### 1️⃣ Clone Repository

git clone https://github.com/your-username/terraform-aws-mini-stack.git
cd terraform-aws-mini-stack

---

### 2️⃣ Initialize Terraform

terraform init

---

### 3️⃣ Format Code

terraform fmt -recursive

---

### 4️⃣ Validate Configuration

terraform validate

---

### 5️⃣ Plan Infrastructure

terraform plan

---

### 6️⃣ Apply Infrastructure

terraform apply

Type:

yes

---

## 🌐 Outputs

After successful deployment, Terraform provides:

- EC2 Public IP
- VPC ID
- Subnet ID
- S3 Bucket Name

Example:

ec2_public_ip = "13.xx.xx.xx"
vpc_id        = "vpc-xxxxxx"
bucket_name   = "terraform-demo-bucket"

---

## 🔁 Destroy Infrastructure

To delete all resources:

terraform destroy

---

## 🔄 CI/CD Pipeline (GitHub Actions)

This project includes a CI pipeline that:

- Checks Terraform formatting
- Validates Terraform code
- Runs automatically on push and pull requests

File location:

.github/workflows/terraform.yml

---

## 🧠 What You Learned

- Terraform basics
- AWS cloud infrastructure
- Infrastructure as Code (IaC)
- Modular Terraform design
- CI/CD automation using GitHub Actions

---

## 🚀 Future Improvements

- Add Load Balancer
- Add Auto Scaling Group
- Use Remote Backend (S3 + DynamoDB)
- Add Monitoring (CloudWatch)
- Extend to Multi-Cloud (AWS + Azure)

---

## 👨‍💻 Author

Mounika Pasupuleti  
DevOps & Cloud Engineering Learner

---

## 🎯 Summary

This project demonstrates:

- AWS infrastructure provisioning using Terraform
- Infrastructure as Code (IaC)
- Modular design approach
- CI/CD automation using GitHub Actions
- Real-world DevOps workflow understanding
