# https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest


# module "vpc" {
#   source  = "terraform-aws-modules/vpc/aws"
#   version = "5.5.1"


#   # name = "my-vpc-${random_uuid.uuid.result}"
#   name = "my-vpc-terraform"
#   cidr = "10.0.0.0/16"

#   azs             = ["us-east-1a", "us-east-1b"]
#   private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
#   public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

#   enable_nat_gateway = true
#   enable_vpn_gateway = true
#   create_igw         = true

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }
