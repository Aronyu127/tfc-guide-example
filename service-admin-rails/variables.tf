variable "cluster_id" {
  description = "The ECS cluster ID"
  type        = string
}

variable "environment" {
  description = "The environment name"
  type        = string
}

variable "app_name" {
  description = "The application name"
  type        = string
}

variable "aws_region" {
  description = "The AWS region"
  type        = string
  default     = "sa-east-1"
}