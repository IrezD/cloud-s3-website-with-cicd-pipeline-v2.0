 bucket         = "prod-tfstate-portfolio-site"
    key            = "prod/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "tfstate-portfolio-prod"