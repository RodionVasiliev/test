provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  count         = 2
  ami           = "ami-0c55b159cbfafe1f0"  # Замените на подходящий AMI
  instance_type = element(["t2.medium", "t2.large"], count.index)

  tags = {
    Name = "my-instance-${count.index}"
  }
}
