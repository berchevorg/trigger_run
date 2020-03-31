terraform {
  backend "remote" {
    organization = "georgiman"

    workspaces {
      name = "trigger_run"
    }
  }
}

resource "random_pet" "name" {

  length    = "8"
  separator = "-"
}

output "out" {
  value = "${random_pet.name.id}"
}
