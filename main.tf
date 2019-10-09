###############
# Data Sources
###############

#This Data Source will read in the current AWS Region
data "aws_region" "current" {}

# This Data source will provide the account number if needed
data "aws_caller_identity" "current" {}


output "aws_region_name" {
  value = data.aws_region.current.name
}

output "aws_caller_identity_account_id" {
  value = data.aws_caller_identity.current.account_id
}