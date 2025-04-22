terraform {
  backend "s3" {
    bucket         = "state-bucket-creation"
    key            = "state/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"  # Optional if using DynamoDB for state locking
  }
}

