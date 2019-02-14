resource "github_team" "builders" {
  name        = "builders"
  description = "builders"
  privacy     = "closed"
}

resource "github_team_membership" "jonathanan" {
  team_id  = "${github_team.builders.id}"
  username = "jonathanan"
  role     = "maintainer"
}

resource "github_team_membership" "JoAlvarez" {
  team_id  = "${github_team.builders.id}"
  username = "JoAlvarez"
  role     = "member"
}
