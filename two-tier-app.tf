variable "aws_access_key" {}
variable "aws_secret_key" {}

provider "aws" {
  region     = "us-east-1"
  access_key = "${var.aws_access_key}"
  access_key = "${var.aws_secret_key}"
}

resource "aws_key_pair" "robkey" {
  key_name   = "accesskey"
  public_key = "a4:60:a9:b2:7c:ff:38:37:b1:47:dc:c5:28:f8:72:03:7a:92:c9:da"
}

resource "aws_instance" "web" {
  ami           = "	ami-e5d9439a"
  instance_type = "t2.micro"

  tags {
    Name = "test instance"
  }
}
