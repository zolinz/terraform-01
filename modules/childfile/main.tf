
resource "local_file" "mychild_file" {
  //count = terraform.workspace == "dev" ? 1 : 0
  content  = var.content
  filename = var.path
}
