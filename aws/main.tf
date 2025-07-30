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
}

  # Declara o provider da AWS e a versão que deve sera utilizada | Na configuração está definido que será utilizada especificamente a versão 5.35.0
