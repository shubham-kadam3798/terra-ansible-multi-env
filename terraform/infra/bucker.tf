resource "aws_s3_bucket" "my_tws_batch_bucket" {
  bucket = "${var.env}-tws-junoon-app-bucket-batch-8"
  tags = {
    Name        = "${var.env}-tws-junoon-app-bucket-batch-8"
    Environment = var.env
  }
}