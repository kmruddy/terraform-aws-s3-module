variable "name" {
  description = "Desired name for each ELB"
  default     = "Demo"
}

variable "subnet_id" {
  description = "Desired subnet ID for the instances to use"
  default     = ""
}

variable "sg_id" {
  description = "Desired security group ID for the instances to use"
  default = ""
}

variable "idle_timeout" {
  description = "Desired length for idle timeout"
  default     = 60
}

variable "connection_draining" {
  description = "Boolean to enable connection draining"
  type = bool
  default     = false
}

variable "connection_draining_timeout" {
  description = "Desired length for connection draining timeout"
  default = 300
}

variable "tag_name" {
  description = "Desired tag to assign an ELB"
  default     = "Demo"
}
