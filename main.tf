# 安裝說明
# https://learn.hashicorp.com/terraform/getting-started/install.html

# 資源文件
# https://www.terraform.io/docs/providers/aws/index.html

# 執行步驟
# 1. terraform init
# 2. terraform plan
# 3. terraform apply
# 3. terraform destroy

provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_sqs_queue" "terraform_queue" {
  name                      = "terraform-alanbear-queue"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
}
