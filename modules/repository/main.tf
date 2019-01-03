resource "github_repository" "repository" {
  name         = "${var.name}"
  description  = "${var.description}"
  homepage_url = "${var.homepage_url}"

  private            = "${var.private}"
  has_issues         = "${var.has_issues}"
  has_projects       = "${var.has_projects}"
  has_wiki           = "${var.has_wiki}"
  allow_merge_commit = "${var.allow_merge_commit}"
  allow_squash_merge = "${var.allow_squash_merge}"
  allow_rebase_merge = "${var.allow_rebase_merge}"
  default_branch     = "${var.default_branch}"
  archived           = "${var.archived}"
  topics             = "${var.topics}"

  lifecycle {
    prevent_destroy = true
  }
}

resource "github_branch_protection" "repository_default" {
  repository     = "${var.name}"
  branch         = "${var.default_branch}"
  enforce_admins = "${var.enforce_admins}"

  required_status_checks {
    strict   = "${var.require_up_to_date_branches}"
    contexts = "${var.status_checks}"
  }

  required_pull_request_reviews {
    dismiss_stale_reviews      = "${var.dismiss_stale_reviews}"
    require_code_owner_reviews = "${var.require_code_owner_reviews}"
  }

  restrictions {
    users = "${var.push_users}"
    teams = "${var.push_team_slugs}"
  }

  depends_on = ["github_repository.repository"]
}
