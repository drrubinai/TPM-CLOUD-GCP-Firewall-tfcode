# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "default_sg" {
  description = "The default security group definition for epam projects"
  default     = "sg-914f23bf"
}

variable "AWS_ACCESS_KEY_ID" {
  default="xxx"
}


variable "AWS_SECRET_ACCESS_KEY" {
  default="xxx"
}