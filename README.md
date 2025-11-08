# Automated Docker Container Deployment

## Objective
To automate the deployment of a Docker container running a sample Nginx-based web application using Ansible and Terraform.

---

## Files Overview
- **Dockerfile**: Builds a custom Nginx image serving a simple HTML page.
- **index.html**: Sample web page for testing.
- **deploytest.yml**: Ansible playbook that builds and deploys the Docker container on EC2.
- **inventory.ini**: Contains EC2 host information.
- **main.tf**: Terraform file for provisioning EC2 instance.
- **deploy-container.yml**: Installs Docker on EC2.
- **output.tf**: Outputs instance IP after provisioning.

---

## Steps to Run

### 1. Provision EC2 using Terraform
```bash
terraform init
terraform apply
