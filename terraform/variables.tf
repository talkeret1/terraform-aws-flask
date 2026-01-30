variable "use_localstack" {
  type    = bool
  default = false
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}