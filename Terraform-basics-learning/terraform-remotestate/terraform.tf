terraform {
#data "terraform_remote_state" "network" {
backend "s3" {
        bucket = "aws-ravi-demo"
        key = "aws-demo/terraform.tfstate"
        region = "us-east-1"
        access_key = "AKIAQK2T3YYKFNF6ODPA"
        secret_key = "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"
        dynamodb_table= "aws-ravi-demo"
}
}
