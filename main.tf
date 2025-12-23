resource "local_file" "foo" {
  count = terraform.workspace == "prod" ? 1 : 0
  content  = local.content[terraform.workspace]
  filename = "${path.module}/files/${terraform.workspace}/foo.bar"
}


#resource "local_file" "foo2" {
#  count = terraform.workspace == "dev" ? 1 : 0
#  content  = local.content[terraform.workspace]
#  filename = "${path.module}/files/${terraform.workspace}/foo.bar"
#}

#
#module "mychild" {
#  source = "./modules/childfile"
#  content = "Hello from child"
#  path = "${path.module}/files/${terraform.workspace}/foo-child.bar"
#}


locals {
  content = {
    dev   = "my dev content"
    stage = "my stage content"
    prod  = "my prod content"
  }

  users = { user1 = "value1", user2 = "value2", user3 = "value3", user4 = "value4" }

  
}


output "mycrap" {
  value = local.content[terraform.workspace]
}



output user_subset {
  value = [for s in local.users : upper(s)]
}


output "my_envs" {

  value = local.content["stage"]
}


output "myothercrap" {
  value = var.my_name
}


# resource "kubectl_manifest" "test" {
#   for_each = data.helm_template.my_nginx.manifests
#   yaml_body = each.value
# }



#
# data "helm_template" "my_nginx" {
#   chart = "./helm-charts/my-nginx"
#   name = "my-nginx"
#   set {
#     name  = "port"
#     value = "8080"
#   }
# }
#
# output "my-nginx" {
#   sensitive = false
#   value = data.helm_template.my_nginx.manifests
# }
