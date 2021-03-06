# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "cluster_name" {
  type        = string
  description = "Target ECS cluster used for deployments."
}

variable "ecr_repository_name" {
  type        = string
  description = "Name of the ECR repository for wich a trigger will be created to start the deployment pipeline."
}

variable "service_name" {
  type        = string
  description = "The service's name to create the pipeline resources."
}

variable "tags" {
  type = map(string)
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "enabled" {
  default     = true
  description = "Conditionally enables this module (and all it's ressources)."
  type        = bool
}
