variable "access_key" {}
variable "secret_key" {}

provider "aws" {
    region = "us-east-2"
    access_key = var.access_key
    secret_key = var.secret_key
}

resource "aws_instance" "example" {
    ami = "ami-0fb653ca2d3203ac1"
    instance_type = "t2.micro"

    tags = {
        Name = "terraform-example"
    }
}
