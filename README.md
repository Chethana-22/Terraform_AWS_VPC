# AWS VPC 3-Tier Architecture using Terraform

## Project Overview
This project showcases a 3-tier architecture implemented on AWS using Terraform. It consists of a VPC with three subnets (Public, Private, and Database), equipped with NAT Gateways to provide internet access for resources in private subnets. This setup ensures a secure, scalable, and highly available infrastructure that supports typical application architectures.

## Architecture
The 3-tier architecture is structured as follows:

- **Public Subnet:** Contains internet-facing resources like Load Balancers or Bastion hosts.
- **Private Subnet:** Hosts application servers and microservices that require access to the internet via NAT Gateway.
- **Database Subnet:** Isolated for RDS or database instances with restricted access.

## Architecture Diagram
![image](https://github.com/user-attachments/assets/6479ebeb-10c2-4344-86fe-10c37074e26e)

Key AWS Components:
- VPC
- Public, Private, and Database Subnets
- Internet Gateway
- NAT Gateways for outbound internet access
- Route Tables for network segmentation

## Prerequisites
Before starting, ensure the following:
- **Terraform:** Installed (>= 1.0)
- **AWS CLI:** Configured with the necessary IAM permissions
- **AWS Account:** Valid account with access to create VPC and associated resources

## Setup and Configuration

### Step 1: Clone the Repository
Clone this repository to your local machine to get started.
```bash
git clone https://github.com/Chethana-22/Terraform_AWS_VPC.git
cd Terraform_AWS_VPC
```
### Step 2: Configure Terraform Variables
Define your AWS infrastructure configurations in the terraform.tfvars file or as environment variables:
Example terraform.tfvars file:
```bash
vpc_name = "myvpc"
vpc_cidr_block = "10.0.0.0/16"
vpc_availability_zones = ["us-east-1a", "us-east-1b"]
vpc_public_subnets = ["10.0.101.0/24", "10.0.102.0/24"]
vpc_private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_database_subnets= ["10.0.151.0/24", "10.0.152.0/24"]
```
### Step 3: Initialize Terraform
Initialize Terraform to download the required providers and set up the backend for state management.
```bash
terraform init
```
### Step 4: Plan the Deployment
To preview the resources Terraform will create, use the plan command:

```bash
terraform plan
```
### Step 5: Apply the Configuration
Deploy the infrastructure by applying the configuration. This command will prompt for confirmation before proceeding.

```bash
terraform apply
```
Note: Type yes when prompted to confirm.

### Cleanup
When you're finished, use the destroy command to remove all resources and avoid ongoing AWS charges:

```bash
terraform destroy
```
