variable "username" {
    description = "give username"
    type        = string
}

variable "policy_arn" {
  type    = list(string)
}

/*  default = [
    "[var.policy_arn]"
  ]
  */

variable "group_names" {
    type        = list(string)
}

