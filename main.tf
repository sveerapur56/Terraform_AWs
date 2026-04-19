terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucketaws"
    key            = "global/state.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-lock"
  }
}
 
# -----------------------------------------
# Create an EC2 instance in us-east-1
# -----------------------------------------
# -------------------------------
# Configure AWS Provider
# -------------------------------
provider "aws" {
    region     = "us-east-2"            # AWS region where resources will be created
}

# Create EC2 Instance 1
# -------------------------------
resource "aws_instance" "example1" {

  ami           = "ami-0b2fbde3633b8c69d"   # Amazon Linux AMI (specific to region)
  instance_type = "t2.large"                # Instance type (CPU + RAM)
  key_name      = "aws_demo"                # Existing key pair for SSH login

  associate_public_ip_address = true        # Assign public IP to access from internet

  # -------------------------------
  # Tags (used for identification)
  # -------------------------------
  tags = {
    Name = "Instance1"   # Instance name in AWS console
    Env  = "dev"         # Environment tag (dev/test/prod)
  }
}

# -------------------------------
# Create EC2 Instance 2
# -------------------------------
resource "aws_instance" "example2" {

  ami           = "ami-0b2fbde3633b8c69d"   # Same AMI as above
  instance_type = "t2.large"
  key_name      = "aws_demo"

  associate_public_ip_address = true        # Enable public access

  # -------------------------------
  # Tags
  # -------------------------------
  tags = {
    Name = "Instance2"
    Env  = "dev"
  }
}


# -------------------------------
# Create EC2 Instance 3
# -------------------------------
resource "aws_instance" "example3" {

  ami           = "ami-0b2fbde3633b8c69d"   # Same AMI as above
  instance_type = "t2.large"
  key_name      = "aws_demo"

  associate_public_ip_address = true        # Enable public access

  # -------------------------------
  # Tags
  # -------------------------------
  tags = {
    Name = "Instance3"
    Env  = "dev"
  }
}

# -------------------------------
# Create EC2 Instance 4
# -------------------------------
resource "aws_instance" "example4" {

  ami           = "ami-0b2fbde3633b8c69d"   # Same AMI as above
  instance_type = "t2.large"
  key_name      = "aws_demo"

  associate_public_ip_address = true        # Enable public access

  # -------------------------------
  # Tags
  # -------------------------------
  tags = {
    Name = "Instance4"
    Env  = "dev"
  }
}
