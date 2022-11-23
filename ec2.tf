data "aws_ami" "amzn2_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.20210813.1-x86_64-gp2"]
  }

  owners = ["amazon"] # Canonical
}

resource "aws_instance" "terraform_kisujin_ec2" {
#  count                   = var.environment == "prd" ? 2 : 1
  ami                     = data.aws_ami.amzn2_ami.id
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [aws_security_group.terraform_kisujin_sg.id]
  subnet_id               = var.private_subnet_id
  disable_api_termination = "false"
  key_name                = "EC2-KI-KEY"

  root_block_device {
    volume_size           = "8"
    volume_type           = "gp2"
    encrypted             = "true"
    delete_on_termination = "true"
    kms_key_id            = data.aws_kms_key.ebs_kms_key.arn
  }

  tags = {
    Name = "ec2-an2-app-${var.nickname}"
    CreatedBy = "terraform-ki"
    Environment = "dev"
  }
}

# output "EC2_PRIVATE_IP" {
#  value = aws_instance.terraform_kisujin_ec2.private_ip
# }
