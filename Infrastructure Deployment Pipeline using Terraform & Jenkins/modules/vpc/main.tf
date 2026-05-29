resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-VPC"
  }
}

resource "aws_subnet" "mysubnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_cidr
  availability_zone = var.az

  tags = {
    Name = "${var.env}-Subnet"
  }
}

output "subnet_id" {
  value = aws_subnet.mysubnet.id
  description = "The ID of the created subnet"
}
