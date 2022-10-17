# 신규 EBS 볼륨 생성
# resource "aws_ebs_volume" "app_ebs" {
#   availability_zone = "ap-northeast-1a"
#   size              = 8
#   encrypted         = true
#   kms_key_id        = data.aws_kms_key.ebs_kms_key.arn

#   tags = {
#     Name = "ebs-an1-app-${var.nickname}"
#   }
# }

# EC2에 EBS 볼륨을 Attach