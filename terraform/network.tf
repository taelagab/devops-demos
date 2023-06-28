provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "us_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "us-vpc"
  }
}

resource "aws_subnet" "us_vpc_subnet" {
  vpc_id                  = aws_vpc.us_vpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "us-vpc-subnet"
  }
}

resource "aws_subnet" "us_vpc_subnet2" {
  vpc_id            = aws_vpc.us_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "us-vpc-subnet2"
  }

}

