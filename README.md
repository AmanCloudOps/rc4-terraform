# Infrastructure as Code (IaC) with Terraform

## Terraform AWS EC2 Deployment
This repository provides Terraform code for provisioning AWS EC2 infrastructure, covering EC2 instances and security groups. Follow this README for a comprehensive guide on deploying and managing your AWS infrastructure.

---

## **📌 Prerequisites Checklist**
Before proceeding, confirm that:

- Terraform is installed on your local machine
- AWS CLI is installed and configured correctly, including:
    - Valid AWS credentials
    - A default AWS region

---

## **📌 Project Setup**
To initialize the Terraform project, follow these steps:

### **1️⃣ Create Project Directory**
Create a new directory for the Terraform project and navigate into it:
```bash
mkdir terraform-project
cd terraform-project
```

### **2️⃣ Create Terraform Configuration Files**
Inside the project directory, create the following essential files:

- `provider.tf`: Specifies the AWS provider configuration
- `ec2.tf`: Defines the EC2 instance configurations
- `variables.tf`: Stores variable definitions for the project
- `output.tf`: Specifies the output values, such as instance IPs

### **3️⃣ Initialize Terraform**
Run the following command to initialize Terraform:
```bash
terraform init
```

### **4️⃣ Plan the Infrastructure**
Check the execution plan before applying changes:
```bash
terraform plan
```

### **5️⃣ Apply the Terraform Configuration**
Apply the Terraform configuration to create the infrastructure:
```bash
terraform apply
```
When prompted, confirm by entering `yes`.

---

## **🛑 Cleaning Up**
### **Remove Infrastructure**
To completely remove the infrastructure and free up resources, run:
```bash
terraform destroy
```
⚠️ **Warning:** This command will permanently delete all resources created by Terraform.

---

## **✅ Conclusion**
This repository helps automate AWS infrastructure deployment using Terraform. Feel free to modify configurations as needed to suit your use case. 🚀

