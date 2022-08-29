locals {
    description = "Managed By Terraform"
    tags = {
        Name = var.name
        ManagedBy = "Terraform"
        Team      = "Team A"
        Stage = var.stage
        Terraform = "true"
    }
}