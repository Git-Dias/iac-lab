terraform {

  # Declara as vesões que devem ser usadas nos providers
  required_version = ">=1.0.0"

  # Declara o provider da AWS e a versão que deve sera utilizada | Na configuração está definido que será utilizada especificamente a versão 5.35.0
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }
  # A utilziação do bloco de backend aponta para um S3 / Storage Accout onde o state ficará armazenado, de forma remota nesses casos
  backend "s3" {
    bucket = "bucket-rstate-tf"          #nome do bucket
    key    = "lab-env/terraform.tfstate" #path onde o tfstate será armazenado
    region = "us-east-2"                 #região do bucket
  }

}
