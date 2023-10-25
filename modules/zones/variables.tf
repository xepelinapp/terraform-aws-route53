variable "create" {
  description = "Whether to create Route53 zone"
  type        = bool
  default     = true
}

variable "zones" {
  description = "Map of Route53 zone parameters"
  type        = any
  default     = {}
}

variable "tags" {
  type = object({
    name           = string
    owner          = string
    environment    = string
    team           = string
    repo           = string
    provision      = string
    ticket         = string
  })
  description = <<-EOT
  name:
    Default name for resources if it was not provided at resource-level.

  owner:
    Functional team accountable for resources created.

  environment:
    Environment resources are being created at.
    Example values: sandbox, dev, qa, prod, homo

  team:
    team to which resources created correspond to.

  repo:
    Github repository
  
  provision:
    Provision method. (terraform)
  
  ticket:
    Jira ticket link. (N/A default)
  EOT
}
