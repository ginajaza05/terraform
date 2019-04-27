provider "aws" {
  region     = "us-east-1"
   shared_credentials_file = "~/.aws/credentials"
  profile                 = "superhero"
}


resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.ec2_type}"
  key_name      = "default_key_AWS"


  tags = {
    Name = "HelloWorld"
  }
}

