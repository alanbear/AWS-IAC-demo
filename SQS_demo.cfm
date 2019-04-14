# 安裝說明
# https://docs.aws.amazon.com/en_us/cli/latest/userguide/cli-chap-install.html

# 資源文件
# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-reference.html

# 執行步驟
# aws console
# aws cli
## aws cloudformation create-stack --stack-name cfm-SQS-demo --template-body file://SQS_demo.cfm
## aws cloudformation delete-stack --stack-name cfm-SQS-demo

---
AWSTemplateFormatVersion: "2010-09-09"

Resources:
  AlanbearQueue: 
    Type: AWS::SQS::Queue
    Properties: 
      QueueName: cloudformation-alanbear-queue
      DelaySeconds: 90
      MaximumMessageSize: 2048
      MessageRetentionPeriod: 86400
      ReceiveMessageWaitTimeSeconds: 10
