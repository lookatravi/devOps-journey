output  "demo_outputeip" {
 #value  = aws_eip.myeip.public_ip
 # to see all the infor remove public_ip attribute
 value  = aws_eip.myeip
}
