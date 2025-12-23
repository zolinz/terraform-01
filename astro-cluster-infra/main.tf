# locals {
#   cluster = {
#     dev   = "my dev content"
#     stage = "my stage content"
#     prod  = "my prod content"
#   }
# }


output "mycluster" {
  value = var.name
}
