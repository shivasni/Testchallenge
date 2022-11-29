  variable "rulefirewallname" {
      type = "string"
  }
  variable "resourcegroupname" {}
  variable "servername" {}
  variable "startip" {
      type = "list"
  }
  variable "endip" {
      type = "list",
      default=[]
  }
    
    variable "count" {
      default=0
  }
