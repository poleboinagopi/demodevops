resource "aws_s3_bucket" "leo" {
    for_each = {
      versions = "leovars"
      lift = "leovars2"
      qa = "leovars3"
          }
     bucket = "${each.key}-${each.value}"

    tags = {
      name = "${each.key}"
      Environment = "production"
    }
  
}