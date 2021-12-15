variable "credential_file" {
  type = string
  description = "your aws credentials file"
  default = "~/.aws/credentials"
}

variable "credential_profile" {
  type = string
  description = "the section in ~/.aws/credentials with your desired aws_access_key_id and aws_secret_access_key values"
  default = "default"
}

variable "region" {
  type  = string
  description = "aws region"
  default = "eu-west-2"
}

variable "service_count" {
  type = number
  default = 3
  description = "number of services (each using unique config)"
}

variable "app_name" {
  type = string
  default = "streetmerchant"
}

variable "memory" {
  type = string
  default = "2048"
  description = "ecs task memory"
}

variable "cpu" {
  type = number
  default = 1024
  description = "ecs task cpu"
}

variable "streetmerchant_env" {
  type = map
  description = "name/value pairs for .env values"
  default = {}
}

variable "all_configs" {
  type = list(map(string))

  description = "all the configuration objects"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "myEcsTaskExecutionRole"
}
