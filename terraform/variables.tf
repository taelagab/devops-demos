variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

data "aws_availability_zones" "available" {
  state = "available"
}

output "list_of_az" {
  value = ["${data.aws_availability_zones.available.names[0]}", "${data.aws_availability_zones.available.names[1]}"]
}

variable "cluster_name" {
  description = "Name for the EKS cluster"
  default     = "python_flask_cluster"
}


variable "instance_type" {
  description = "EC2 instance type for worker nodes"
  default     = "t3.medium"
}

variable "asg_desired_capacity" {
  description = "Desired capacity for the Auto Scaling Group"
  default     = 3
}

variable "asg_min_size" {
  description = "Minimum size for the Auto Scaling Group"
  default     = 1
}

variable "asg_max_size" {
  description = "Maximum size for the Auto Scaling Group"
  default     = 5
}
