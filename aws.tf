provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_role" "lambda_role" {
  # Define IAM role and policies here
}

resource "aws_s3_bucket" "b" {
  bucket = "json-file"
  acl    = "private"
}

resource "aws_s3_bucket" "b" {
  bucket = "csv-file"
  acl    = "private"
}
resource "aws_lambda_function" "data_processor" {
  # Define Lambda function configuration here
  # Set the S3 bucket trigger
}

resource "aws_sns_topic" "report_notification" {
  # Define SNS topic here
}

resource "aws_lambda_function" "report_uploader" {
  # Define Lambda function for report uploading here
}

resource "aws_quicksight_dataset" "my_dataset" {
  # Define QuickSight dataset here
}
