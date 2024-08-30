resource "aws_vpc" "vpc_dev" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "vpc_dev_public" {
  vpc_id = aws_vpc.vpc_dev.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "vpc_dev_public"
    Env = "Dev"
  }
}

