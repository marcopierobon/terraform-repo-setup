locals {
  team_name = "PinkUnicorns"
  
  common_tags = {
    Team = local.team_name
    Environment = var.environment_name
  }
}