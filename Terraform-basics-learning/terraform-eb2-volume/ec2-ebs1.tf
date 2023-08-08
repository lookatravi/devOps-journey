resource "aws_instance" "myec2-demo" {
        ami = "ami-026b57f3c383c2eec"
        instance_type = "t2.micro"
        key_name = "docker-host"
        root_block_device {
          volume_size   = "10"
          volume_type   = "gp2"
          encrypted     = true
          delete_on_termination = true
  }
}
