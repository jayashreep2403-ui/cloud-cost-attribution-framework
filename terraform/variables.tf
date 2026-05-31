variable "environment" {
  description = "Deployment environment"
  default     = "dev"
}

variable "project" {
  description = "Project name"
  default     = "cost-attribution"
}

variable "owner" {
  description = "Resource owner"
  default     = "jayashree"
}

variable "cost_center" {
  description = "Cost allocation group"
  default     = "engineering"
}
