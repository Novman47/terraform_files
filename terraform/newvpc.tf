resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "demo-vpc-terraform"
    Purpose = "Jenkins Terraform Demo"
  }
}

resource "aws_instance" "Terrafrom-ec2" {
  ami = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
}
