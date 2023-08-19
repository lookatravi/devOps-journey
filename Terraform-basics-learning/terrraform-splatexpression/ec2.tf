 resource "aws_instance" "app_server" {
   ami           = "ami-026b57f3c383c2eec"
   instance_type = "t2.micro"
   count = 2
}

output "instance_ip_addr" {
	value = aws_instanc.myec2[*].private_ip
	
 }
