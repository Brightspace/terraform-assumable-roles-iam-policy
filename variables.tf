variable "policy_name" {
  description = "The name of the policy"
}

variable "policy_description" {
  description = "The description of the policy"
}

variable "role_arns" {
  description = "The list of role arns which can be assumed"
  type = "list"
}
