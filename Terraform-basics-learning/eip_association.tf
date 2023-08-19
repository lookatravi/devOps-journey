resource  "aws_instance" "demoec2" {
     ami = "ami-026b57f3c383c2eec"
     instance_type  = "t2.micro"
   }
resource "aws_eip" "myeip" {
  vpc = true
}
resource "aws_eip_association" "eip_assoc" {
 instance_id   = aws_instance.demoec2.id
 allocation_id = aws_eip.myeip.id
}
resource "aws_security_group" "allow_eip" {
  name        = "ravidevops-sg"

  ingress {
     from_port   = 443
     to_port     = 443
     protocol    = "tcp"
     cidr_blocks = ["${aws_eip.myeip.public_ip}/32"]
 }
}
