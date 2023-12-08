 bucket         = "${var.env}-tfstate-portfolio-site"
    key            = "${var.env}/terraform.tfstate"
    region         = var.region
    encrypt        = true
    dynamodb_table = "tfstate-portfolio-${var.env}"