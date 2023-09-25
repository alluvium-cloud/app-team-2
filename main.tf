resource "random_string" "id" {
  length  = 8
  upper   = false
  special = false
}

resource "aws_s3_bucket" "bucket" {
  bucket = "app-team-2-${random_string.id.result}"

  tags = {
    Name = "app-team-2-${random_string.id.result}"
  }
}
