output "jenkins_public_ip" {
  description = "Public IP of the Jenkins EC2 instance"
  value       = aws_instance.jenkins.public_ip
}

output "jenkins_public_dns" {
  description = "Public DNS of the Jenkins EC2 instance"
  value       = aws_instance.jenkins.public_dns
}

output "ssh_command" {
  description = "Command to SSH into the Jenkins server"
  value       = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_instance.jenkins.public_ip}"
}
