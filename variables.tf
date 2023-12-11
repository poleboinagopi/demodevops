variable "ami_id" {
  description = "ubuntu 22.04 AMI ID from ohio region"
  type        = string
  default     = "ami-0e83be366243f524a"

}

variable "inst_type" {
  type    = string
  default = "t2.micro"
  #default = each.key

}
#input variables
variable "ec2_tags" {
  description = "i am using merging concept"
  type        = map(string)
  default = {
    "key"  = "version"
    "nano" = "version2"
  }

}


#local variables
locals {
  common_tags = {
    "Name" = "new version"
  }
}

#variable "ass_public" {
# environment = "production"
#  type        = "Node"

#}


