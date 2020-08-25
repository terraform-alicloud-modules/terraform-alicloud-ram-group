variable "region" {
  description = "The region used to launch this module resources."
  type        = string
  default     = ""
}

variable "profile" {
  description = "The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD_PROFILE environment variable."
  type        = string
  default     = ""
}
variable "shared_credentials_file" {
  description = "This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used."
  type        = string
  default     = ""
}

variable "skip_region_validation" {
  description = "Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet)."
  type        = bool
  default     = false
}

################################
# RAM group
################################

variable "create_group" {
  default     = false
  description = "Create the RAM Group"
  type        = bool
}

variable "name" {
  description = "The group name"
  type        = string
  default     = ""
}

variable "comments" {
  description = "The group comments"
  type        = string
  default     = ""
}

variable "force_destroy" {
  description = "Force destroy the RAM group"
  type        = bool
  default     = false
}

variable "group_users" {
  description = "The users belonging to the group"
  type        = list(string)
  default     = []
}

variable "system_policies" {
  description = "The policies of type System to attach to the group"
  type        = list(string)
  default     = []
}

variable "custom_policies" {
  description = "The policies of type Custom to attach to the group"
  type        = list(string)
  default     = []
}
