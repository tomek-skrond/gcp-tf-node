### gcp-tf-node
Terraform IaC for a GCP Node with adding public keys

This just a snippet to reuse for building bigger projects, it is mostly based on Terraform config from this guide: https://cloud.google.com/docs/terraform/get-started-with-terraform


### Prerequisites
Apart from terraform, it is required to have a GCP account with:
- A project
- Created service account for terraform activities in a project

Optional:
- Configured gcloud CLI (optional)

Created using the following Terraform version:
```
$ terraform -version
Terraform v1.4.6
on linux_amd64
+ provider registry.terraform.io/hashicorp/google v4.67.0
```

### Quick guide
Before running `terraform plan/apply` you have to create a `secret.tfvars` (or `<any_other_name>.tfvars`) file and complete the following variables:
```
# path to file with json credentials to google service account
credential_file = ""
# GCP project id
project_id      = ""
# Region
region          = ""
# Regional zone
project_zone    = ""
# Path to public key (for connecting remotely to a machine)
ssh_pubkey      = ""
# User to be created for ssh on a node
ssh_user        = ""
```

After creating a `.tfvars` file, you can `plan` or `apply` using a following command:
```
terraform plan -var-file="secret.tfvars"
```
and
```
terraform apply -var-file="secret.tfvars"
```
To destroy resources, use a command:
```
terraform destroy -var-file="secret.tfvars"
```
