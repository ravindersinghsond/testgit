resource "aws_vpc" "vpc_dev" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "vpcf_dev_public_subnet" {
  vpc_id = aws_vpc.vpc_dev.id
  cidr_block = "10.0.1.0/24"
}