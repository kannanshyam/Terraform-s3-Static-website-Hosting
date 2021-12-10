######### Provider Variables #########

variable "region" {
  description = "Amazon Region"    
  default = "ap-south-1"
}

variable "access_key" {
  default = "AWS_ACCESS_KEY_ID"
}

variable "secret_key" {
  default = "AWS_SECRET_ACCESS_KEY"
}

############ Variables ############

variable "project" {
    default = "projectname"
}

variable "bucket" {
    default = "s3-bucket-name"
}

variable "websiteFiles" {
    default = "Website-File-Location"
}
