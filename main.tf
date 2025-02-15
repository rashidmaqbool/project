# main.tf

# Specify the Terraform provider
provider "aws" {
  region     = var.region # Change this to your preferred AWS region
}

# Define the EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0aff18ec83b712f05" # Replace with a valid AMI ID
  instance_type = var.instance_type              # Change this to your preferred instance type

  tags = {
    Name = "example-instance"
  }
}

# Define output variables
output "instance_id" {
  value = aws_instance.example.id
}
