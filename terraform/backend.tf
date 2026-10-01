terraform {
  backend "s3" {
    bucket = "cloud-deployments-terraform-state-snehal"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"

    use_lockfile = true
  }
}
