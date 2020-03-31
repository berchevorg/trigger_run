terraform {
  backend "remote" {
    organization = "twentyfour24"

    workspaces {
      name = "trigger_run"
    }
  }
}

resource "random_pet" "name" {

  length    = "6"
  separator = "-"
}

output "out" {
  value = "${random_pet.name.id}"
}
