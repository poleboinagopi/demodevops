data "aws_vpc" "customeVPC" {
  tags = {
    Name = "customeVPC"
  }

}

data "aws_subnets" "public_subnents" {
  tags = {
    key = "subnet"
  }

}

data "aws_subnets" "private_subnents" {
  tags = {
    key = "subnent"
  }

}