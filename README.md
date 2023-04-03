# Terraform Fundamentals 

## setup environment

1. install terraform:   

    ```sudo sh environment_setup/tf.sh```   

2. install aws cli:   

    ```sudo sh environment_setup/aws_cli.sh```   

3. configure aws cli:   

    ```aws configure```   

    use your credentials to authenticate   
4. create your main.tf file:   

    ```
    terraform {
        required_providers {
            aws = {
            source = "hashicorp/aws"
            version = "4.61.0"
            }
        }
    }

    provider "aws" {
    # Configuration options
    }
    ```   
5. run ```terraform init``` at the main.tf file path

### Provisioning a bucket
run ```terraform plan``` inside terraform folder   

run ```terraform apply``` to apply the changes to your cloud provider
