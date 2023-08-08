terraform {
#data "terraform_remote_state" "network" {
backend "s3" {
        bucket = "aws-ravi-demo"
        key = "aws-demo/terraform.tfstate"
        region = "us-east-1"
        access_key = "XXXXX"
        secret_key = "XXXX"
        dynamodb_table= "aws-ravi-demo"
}
}
