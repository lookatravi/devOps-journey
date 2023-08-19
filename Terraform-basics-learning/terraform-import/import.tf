resource "aws_instance" "myec2" {
   ami = "ami-0f924dc71d44d23e2"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-07a9a7a55b3fd2d85", "sg-08e8d4cd7f043c120"]
  key_name = "manual"
  subnet_id = "subnet-0005760d4edaac4a7"
}
