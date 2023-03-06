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

variable "name_prefix" {
  description = "Please provide a value"
  type        = string
  default     = ""
}

variable "image_id" {
  description = "Please provide a value"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "Please provide a value"
  type        = string
  default     = ""
}

variable "desired_capacity" {
  description = "Please provide a value"
  type        = string
  default     = ""
}

variable "max_size" {
  description = "Please provide a value"
  type        = string
  default     = ""
}

variable "min_size" {
  description = "Please provide a value"
  type        = string
  default     = ""
}

variable "subnets" {
  description = "Please provide a list of subnets"
  type        = list
  default     = []
}