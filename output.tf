output "filename" {
  value = join("", local_file.foo.*.filename)
  #value = local_file.foo.*.filename
}
