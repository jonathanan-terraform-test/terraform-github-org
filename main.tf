provider "github" {
  version      = "~> 1.3"
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
  base_url     = "https://github.com/"
}

terraform {
  backend "s3" {
    bucket         = "terraform.github"
    key            = "jonathanan-terraform-test/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform.github"
  }
}
