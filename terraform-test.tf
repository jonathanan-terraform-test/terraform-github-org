module "terraform-test" {
  source = "modules/repository"
  name   = "terraform-test"

  protected_branches = ["master", "test1", "test2"]
}
resource "null_resource" "example" {}
