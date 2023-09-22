provider "aws" {
  region = "ap-south-1" # Singapore region
  access_key = "AKIAQ5UGFN4CDNVBTLTV"
  secret_key = "NzhqX0KGzzPdmDuDz+RX2K1oiAxfnqu25u2LyUFp"
}

resource "aws_instance" "example" {
  ami           = "ami-0dacd9d37849a9f38" # Replace with the SUSE Linux AMI ID
  instance_type = "t2.micro"
}

output "public_ip" {
  value = aws_instance.example.public_ip
}