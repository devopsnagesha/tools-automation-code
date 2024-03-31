variable "tools" {
  default = {
    prometheus = {
      instance_type = "t3.small"
    }
  }
}

variable "zone_id" {
  default = "Z09874791K9BLG1QR2D7R"
}
#end of prometheus setup