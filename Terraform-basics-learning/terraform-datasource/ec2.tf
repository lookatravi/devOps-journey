 resource "aws_instance" "app_server" {
   ami           = "data.aws_ami.web_ami"
   instance_type = "t2.micro"

data "aws_ami" "web_ami" {
	most_recent = true
	owners = ["amazon"]
	
	filter {
		name = "name"
		values = ["amzn2-ami-hvm**"]
	}	

 }
