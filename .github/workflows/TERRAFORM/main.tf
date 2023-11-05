terraform {
   backend "azurerm" {
     resource_group_name  = "Terraform_1"
     storage_account_name = "terraformnewdemo"
     container_name       = "tfstatefile"
     key                  = "dev.terraform.tfstate"
   }
}
module "RG" {
  source = "./modules/RG"
  rgname = var.rgname
  location = var.location
)
  
