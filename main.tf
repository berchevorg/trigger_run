
resource "random_pet" "name" {

  length    = "7"
  separator = "-"
}

output "out" {
  value = "${random_pet.name.id}"
}
