variable "instance_name"{
   description =  "Name tag for the EC2 instance"
   type = string
}
variable "ami_id"{
    description = "Ami ID to use for the instance"
    type = string
}
variable "instance_type"{
    description = "EC2 instance type"
    type = string
    default = "t3.micro"
}
variable "subnet_id"{
    description = "subnet ID whwre the instance will be launched"
    type = string
}
variable "vpc_security_group_ids"{
    description = "List of security group IDs to associate with the instance"
    type = list(string)
    default = []
}
variable "key_name"{
    type = string
    default = null
}
variable "user_date"{
    description = "User date script to run instance boot"
    type = string
    default = ""
}
variable "tags"{
    description = "Tags to apply to the instance"
    type = map(string)
    default = {}
}