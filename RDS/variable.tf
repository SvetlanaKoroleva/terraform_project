variable "region" {
  description = "Please provide a region name"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Please provide a tag for resource name"
  type        = map(any)
  default     = {}
}

variable "allocated_storage" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = ""
}

variable "engine" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = ""
}

variable "db_name" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = ""
}


variable "engine_version" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = ""
}

variable "instance_class" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = ""
}

variable "username" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = ""
}

variable "password" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = ""
}

variable "publicly_accessible" {
  description = "Please provide subnet CIDR block"
  type        = string
  default     = ""
}