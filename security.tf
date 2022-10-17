# EC2 보안 그룹
resource "aws_security_group" "terraform_kisujin_sg" {
  name        = "scg-an2-ec2-${var.nickname}"
  description = "Allow Access to Bastion EC2"
  vpc_id      = var.vpc_id

  ## 인바운드 규칙 추가
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}