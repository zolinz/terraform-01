
resource "local_file" "mychild_file" {
  content  = var.content
  filename = var.path
}



output "myoutputfile" {
  value = local_file.mychild_file
}
