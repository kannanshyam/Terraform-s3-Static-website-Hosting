module "template_files" {
  source = "hashicorp/dir/template"   ## Template :: https://registry.terraform.io/modules/hashicorp/dir/template/latest
  base_dir = "${var.websiteFiles}"  
}
