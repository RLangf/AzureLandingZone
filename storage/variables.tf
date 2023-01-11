variable "name" {
    type = string
    description = "The name of the resource, with convetions applied."
}

variable "container_name" {
    type = string
    description = "Name of the blob container."
}

variable "resource_group_name" {
    type = string
    description = "The resource group for the resource."
}

variable "location" {
    type = string
    description = "Azure region to use for deployment. To get the list of all locations with table format from Az CLI, run #az account list-locations -o table'."
}

variable "account_tier" {
    type = string
    description = "The SKU of the SA. Standard or Premium usually."
}

variable "allow_blob_public_access" {
    type = bool
    description = "Dictates if access to the Blob is public or private."
}

variable "account_replication_type" {
    type = string
    description = "LRS, ZRS, or GRS."
}

variable "account_type" {
    type = string
    description = "The type of Storage of the SA. Typically StorageV2 or Blob."
}

variable "access_tier" {
    type = string
    description = "Hot, Cool, or Archive."
}

variable "tags" {
    type = map(string)
    description = "The tags applied to the resource."
    default = {}
}

variable "environment" {
    type = string
    description = "Environment name, e.g. 'dev', or 'prod'."
    default = "dev"
}

variable "department" {
    type = string
    description = "A sample variable passed from the build pipeline and used to tag resources."
    default = "Software"
}

variable "designer" {
    type = string
    description = "Who designed the deployment."
    default = "Rupert Langford"
}