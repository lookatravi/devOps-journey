resource "aws_instance" "myec2" {
   ami = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
}
resource "aws_iam_user" "devuser" {
  name = var.username
}
output "iam_username" {
  value = aws_iam_user.devuser.name
}
