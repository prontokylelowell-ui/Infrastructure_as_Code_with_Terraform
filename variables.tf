variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used as a prefix for all resources"
  type        = string
  default     = "iac-demo"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "bucket_name" {
  description = "Globally unique name for the S3 storage bucket"
  type        = string
  default     = "iac-demo-storage-bucket-2026"
}

variable "instance_type" {
  description = "EC2 instance type for the VM"
  type        = string
  default     = "t2.micro"
}

variable "allowed_ssh_cidrs" {
  description = "List of CIDR blocks allowed to SSH into the VM. Set to your public IP, e.g. [\"203.0.113.5/32\"]."
  type        = list(string)
  default     = []
}
