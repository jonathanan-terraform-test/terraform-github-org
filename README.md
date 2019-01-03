# terraform-github-org
Manages this github organization with the use of [terraform](https://www.terraform.io) and it's [github provider](https://www.terraform.io/docs/providers/github/index.html). The state configured through this repository is stored in AWS S3.

## Configuring Repositories
Each repository should have their own terraform file located at the root of this repository. They should use `modules/repository` module, which defines default settings. Any of the settings defined in `modules/repository/variables.tf` can be overridden.

## Automated Management
The master branch of this repository is protected. All PRs to the master branch require reviews and status checks to pass. Once the PR is merged to master, an automated terraform build will run and apply the changes to production. In order for the automated build to run, the corresponding jenkins master will need to be configured with github token that has owner permissions to the organization and will need an agent with terraform installed. The build environment will also need AWS keys configured to access the remote state stored in S3.
