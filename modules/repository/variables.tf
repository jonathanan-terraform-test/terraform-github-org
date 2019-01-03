# Repository
variable "name" {}

variable "description" {
  default = ""
}

variable "homepage_url" {
  default = ""
}

variable "private" {
  default = false
}

variable "has_issues" {
  default = true
}

variable "has_projects" {
  default = true
}

variable "has_wiki" {
  default = true
}

variable "allow_merge_commit" {
  default = false
}

variable "allow_squash_merge" {
  default = true
}

variable "allow_rebase_merge" {
  default = true
}

variable "auto_init" {
  default = true
}

variable "protected_branches" {
  type = "list"
  default = ["master"]
}

variable "archived" {
  default = false
}

variable "topics" {
  type    = "list"
  default = []
}

# Branch Protection
variable "enforce_admins" {
  default = true
}

variable "require_up_to_date_branches" {
  default = true
}

variable "status_checks" {
  type    = "list"
  default = []
}

variable "dismiss_stale_reviews" {
  default = true
}

variable "require_code_owner_reviews" {
  default = false
}

variable "push_users" {
  type    = "list"
  default = []
}

variable "push_team_slugs" {
  type    = "list"
  default = []
}
