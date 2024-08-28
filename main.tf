resource "aws_vpc" "vpc1_name" {
  cidr_block = var.cidr1_block_value[count.index]
  count = 1
 
  tags = {
    Name = var.vpc1_name[count.index]
    count = 1
  }
}

resource "aws_vpc" "vpc2_name" {
  cidr_block = var.cidr2_block_value[count.index]
  count = 1
 
  tags = {
    Name = var.vpc2_name[count.index]
    count = 1
  }
}

resource "aws_subnet" "aws_dev_subnet_name" {
  count = 2
  vpc_id     = aws_vpc.vpc1_name[0].id
  
  cidr_block = aws_vpc.vpc1_name[0].cidr_block
  
  tags = {
    Name = var.aws_dev_subnet_name[count.index]
  }
}

resource "aws_subnet" "aws_prod_subnet_name" {
  count = 2
  vpc_id     = aws_vpc.vpc2_name[0].id
  
  cidr_block = aws_vpc.vpc2_name[0].cidr_block
  
  tags = {
    Name = var.aws_prod_subnet_name[count.index]
  }
}