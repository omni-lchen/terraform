locals {
  name   = "longs-test-eks"
  region = "eu-west-1"

  tags = {
    Environment = "sandbox"
    Project     = "Longs Test EKS"
    Owner       = "Long Chen"
  }
}
