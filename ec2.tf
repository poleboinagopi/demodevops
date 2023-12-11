resource "aws_instance" "ec2_demo1" {
  #count = 3
  #for_each = toset(["t2.micro", "t2.small"])
  ami           = data.aws_ami.ubuntu_ami.image_id
  key_name      = "dev"
  instance_type = var.inst_type
  subnet_id     = data.aws_subnets.public_subnents.ids[0]


  #instance_type = each.key
  tags = merge(
    var.ec2_tags,
    local.common_tags
  ) #{
  #"Name" = "demo_terraform"
  #}

}

