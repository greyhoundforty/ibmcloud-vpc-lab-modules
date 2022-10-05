terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.46.0"
    }
  }
}

provider "ibm" {}