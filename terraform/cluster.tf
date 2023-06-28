terraform {
  required_providers {
    aws = "5.5.0"
  }
}

resource "aws_eks_cluster" "flask_cluster" {
  name     = var.cluster_name
  role_arn = "arn:aws:iam::590671106905:role/akshata-eks-role"
  version  = "1.27"

  vpc_config {
    subnet_ids = [aws_subnet.us_vpc_subnet.id, aws_subnet.us_vpc_subnet2.id]
  }

}


