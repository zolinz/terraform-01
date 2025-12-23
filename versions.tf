terraform {
  required_version = "~>1.12.2"

  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }


    helm = {
      source  = "hashicorp/helm"
      version = "2.6.0"
    }

    
  }



}

provider "kubectl" {
  config_context = "kind-zoli-test"

}


provider "helm" {
  kubernetes {
    config_context = "kind-zoli-test"
  }
}
