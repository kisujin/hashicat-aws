# Outputs file
output "EC2_PRIVATE_IP" {
  value = aws_instance.terraform_kisujin_ec2.private_ip
}

# output "catapp_ip" {
#  value = "http://${aws_eip.hashicat.public_ip}"
# }
