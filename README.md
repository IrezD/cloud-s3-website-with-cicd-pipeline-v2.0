# Static Webiste Hosted on S3 - Personal Porforlio

## Overview
The objective of this project is to set up the deployment of a static website on AWS, utilizing Infrastructure as Code (IaC) through Terraform. Also aiming to establish a seamless CI/CD pipeline using GitHub Actions. Changes will be staged for code testing and review, with the final deployment to live production requiring a 'Pull Request' to the main branch after changes have been validated on a working branch. Additionally, the project adheres to cloud security best practices, implementing the principle of least privilege by assigning only the necessary policies to the IAM Role for the workflow, ensuring secure provisioning of resources.

## Visual Representation of the Infrastructure

![Diagram Image](https://github.com/IrezD/cloud-s3-website-with-cicd-pipeline-v2.0/assets/88015931/5c72f11e-540d-4c3e-9e20-33d8db5d43bd)

## Prerequisuites

* Authenticate OIDC with AWS and create an IAM Role with atleast access to the following resources (Route53, S3, DynamoDB, Certificate Manager & CloudFront).
* Ensure to have a custom domain and a hosted zone configured on Route53.
* Ensure to have an existing S3 bucket to store Terraform-state files and reference the 'bucket name' in the backend files

## What this Project aims to Solve

* Having seperate environments to test and run codes before pushing to production.
* Reducing code duplication by utilizing Terraform modules and variables.
* Restricted access on AWS to only the resources required to run the project.


## Known Errors

Expect an error when deploying the Certificate Manager configuration on the acm.tf file for the first time. This is because, email validation is required. So when running the configuration for the first time, it will trigger the validation email to be sent to your registered email address on your AWS account.

Search for the validation email (don't forget to check spam folder), once you are done approving certificate request via email - Run the worflow again and the error should be gone.

## Links to both my Environments

* Live Production - https://dennisowie.com/
* Staging site - https://dev.dennisowie.com/