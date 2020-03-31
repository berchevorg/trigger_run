terraform {
  backend "remote" {
    organization = "georgiman"

    workspaces {
      name = "trigger_run"
    }
  }
}

variable "ccount" {}

resource "random_pet" "name" {

  length    = var.ccount
  separator = "-"
}

output "out" {
  value = random_pet.name.id
}
