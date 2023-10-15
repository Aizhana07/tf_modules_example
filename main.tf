terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.21.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

#MODULE FOR RDS INSTANCE

module "rds_instance" {
  source            = "../child_module/rds"
  db_intance_type   = "db.t3.micro"
  password          = "MyStrongPassword"
  allocated_storage = 10
  db_name           = "mydb"

}

#MODULES FOR IAM USERS

module "iam_user_alice" {
  source                         = "../child_module/iam"
  iam_username                   = "Alice"
  aws_iam_user_policy_attachment = var.aws_iam_user_policy_attachment
}


module "iam_user_john" {
  source                         = "../child_module/iam"
  iam_username                   = "Johnx"
  aws_iam_user_policy_attachment = var.aws_iam_user_policy_attachment
}
