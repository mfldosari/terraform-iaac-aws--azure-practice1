# terraform-iaac-aws-practice1

# 🌐 Cross-Cloud Chatbot Deployment with Terraform (Azure + AWS)

## 🚀 Overview

This project showcases how to use **Terraform** for Infrastructure as Code (IaC) to deploy a hybrid cloud setup spanning **Azure** and **AWS**. It provisions:

- A **PostgreSQL database** and **Resource Group** in Azure.
- A **Virtual Machine (VM)** inside a **VPC** in AWS.
- A **chatbot application** hosted on the AWS VM.
- Secure cross-cloud connectivity where the chatbot communicates with the Azure database.

---

## 🛠️ Infrastructure Components

### 🔵 Azure
- **Resource Group**: Holds all Azure resources for this project.
- **PostgreSQL Flexible Server**: Stores chatbot conversations and metadata.
- **Networking**: IP rules configured to allow traffic from the AWS VM.

### 🟡 AWS
- **VPC (Virtual Private Cloud)**: Custom network setup including subnets, route tables, and an internet gateway.
- **EC2 Virtual Machine**: Runs the chatbot (Streamlit + FastAPI, Chromadb).
- **Security Group**: Configured to allow:
  - SSH access from trusted IPs.
  - Outbound access to Azure PostgreSQL.
- **Key Pair**: Used for SSH access to the VM.

---

## 🌐 Cross-Cloud Integration

- The AWS EC2 instance connects to the Azure PostgreSQL using a secure connection string.
- Both clouds are securely linked via networking rules and public endpoints.

---

## 📦 Tech Stack

- **Terraform** (IaC)
- **Azure PostgreSQL Flexible Server**
- **AWS EC2 + VPC**
- **FastAPI + Python** (Chatbot backend)
- **Azure + AWS Providers for Terraform**

---

📌 **Architecture Diagram**

*Insert your architecture diagram image below (for example, a PNG or SVG file):*

![Architecture Diagram](path/to/your/image.png)

