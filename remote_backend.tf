# 원격 백엔드 설정
terraform {
  backend "remote" {
    hostname = "terraform.cloudops.cloudxper.lgcns.com"
    organization = "CloudTechnicalSupportTeam_Test"
    workspaces {
      name = "hashicat-aws-kisujin"
    }
  }
}