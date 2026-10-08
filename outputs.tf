output "s3_bucket_name" {
  description = "Name of the S3 storage bucket"
  value       = aws_s3_bucket.app_storage.id
}

output "s3_bucket_arn" {
  description = "ARN of the S3 storage bucket"
  value       = aws_s3_bucket.app_storage.arn
}

output "security_group_id" {
  description = "ID of the VM security group"
  value       = aws_security_group.vm_sg.id
}

output "vm_instance_id" {
  description = "ID of the EC2 VM instance"
  value       = aws_instance.app_vm.id
}

output "vm_public_ip" {
  description = "Public IP address of the EC2 VM"
  value       = aws_instance.app_vm.public_ip
}

output "vm_public_dns" {
  description = "Public DNS name of the EC2 VM"
  value       = aws_instance.app_vm.public_dns
}

output "vm_private_ip" {
  description = "Private IP address of the EC2 VM"
  value       = aws_instance.app_vm.private_ip
}

output "website_url" {
  description = "HTTP URL to access the VM's web server"
  value       = "http://${aws_instance.app_vm.public_dns}"
}
