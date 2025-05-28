module "vpc" {
  source        = "../../modules/vpc"
  vpc_cidr      = "11.0.0.0/16"
  subnet_cidr   = "11.0.1.0/24"
  subnet_az     = "${var.aws_region}a"          # ap-southeast-1a
  env           = "qa"
}

module "ec2" {
  source            = "../../modules/ec2"
  ami_id            = "ami-0afc7fe9be84307e4"
  instance_type     = "t2.micro"
  subnet_id         = module.vpc.subnet_id
  ec2_count         = 3
  env               = "qa"
}