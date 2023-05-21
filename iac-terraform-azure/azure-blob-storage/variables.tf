variable "arg_name" {
    description = "Resource group name"
    type = string
  
}
variable "arg_location" {
    description = "Resource group location"
    type = string   
  
}
variable "asa_name" {
    description = "Storage account name"
    type = string 
}
variable "asa_tier" {
    description = "Storage account tier"
    type = string  
}
variable "asa_replication" {
    description = "Storage account replication"
    type = string  
}
variable "asc_name" {
    description = "Storage account container name"
    type = string  
}
variable "asc_container_acces_type" {
     description = "Storage account container acces type"
    type = string 
}
variable "asb_name" {
    description = "Storage blob name"
    type = string  
}
variable "asb_type" {
    description = "Storage blob type"
    type = string  
}
variable "asb_source" {
    description = "Storage blob source"
    type = string 
}