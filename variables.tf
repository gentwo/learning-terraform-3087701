variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Name filter and owner of target AMI"

  type = object({
    filter_string = string
    owner = string
  })
  default {
    filter_string = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631" # Bitnami
  }

}

variable "environment" {
  description = "Environment"

  type = object ({
    name = string
    network_prefix = string
  })

  default {
    name = "dev"
    network_prefix = "10.0"
  }
}

variable "autoscale" {
  description = "Instance min and max"

  type = object ({
    min = string
    max = string
  })

  default {
    min = 1
    max = 2
  }
}