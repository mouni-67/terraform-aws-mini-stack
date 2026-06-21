module "network" {
  source = "./modules/network"

  project_name       = var.project_name
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  allowed_ssh_cidr   = var.allowed_ssh_cidr
}

module "compute" {
  source = "./modules/compute"

  project_name   = var.project_name
  instance_type  = var.instance_type
  subnet_id      = module.network.subnet_id
  sg_id          = module.network.sg_id
  ami_id         = "ami-0c2af51e265bd5e0e"
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}
