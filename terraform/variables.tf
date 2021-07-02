variable "region" {
  default = "us-east-1"
}

variable "vpc_id" {
    default = "vpc-006e3b866a70e38fc"
}

variable "subnets_id" {
  default     = "subnet-0eb150ad2fa3b57e1"
}

variable "project_name" {
    default = "vayana-test"
}

variable "repo_url" {
  default     = "885134275523.dkr.ecr.us-east-1.amazonaws.com/vayana-test"
}

variable "first_application_name" {
  default     = "flask-application"
}

variable "second_application_name" {
  default     = "nginx-web-server"
}

variable "service_name" {
    default = "demo-app"
}

variable "container_cpu" {
    default = "512"
}

variable "container_memory" {
    default = "1024"
}

variable "service_desired_count" {
    default = "2"
}