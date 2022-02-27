resource "aws_instance" "localstack_instance" {
  instance_type = "t2.micro"
  ami           = "ami-0000000000"
}