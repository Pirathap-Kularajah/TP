variable "aws_region" {

    description = "Region of aws deployment"
    type = string
    default = "us-east-1"
  
}

variable "aws_access_key" {

    description = "AWS Access key for account"
    type = string 
  
}

variable "aws_secret_key" {

    description = "AWS Secret key for account"
    type = string 
  
}

variable "aws_token_session" {

    description = "AWS Session Token"
    type = string 
  
}

variable "ssh_key_name" {
  
  description = "Name of SSH Key"
  type = string

}

variable "public_ssh_key" {
  
  description = "Public ssh key to add on aws account"
  type = string

}

variable "public_ssh_key" {
  
  description = "Public ssh key to add on aws account"
  type = string

}

variable "ingress_rules" {
  default     = {
    "description" = ["For HTTP", "For SSH"]
    "from_port"   = ["80", "22"]
    "to_port"     = ["80", "22"]
    "protocol"    = ["tcp", "tcp"]
    "cidr_blocks" = ["0.0.0.0/0", "0.0.0.0/0"]
  }
  type        = map(list(string))
  description = "Security group rules"
}

