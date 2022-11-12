
global_settings = {
  default_region = "region1"
  regions = {
    region1 = "francecentral"
    region2 = "francesouth"
  }

  prefix        = "rha"
  passthrough   = false
  random_length = 3

  inherit_tags = true
}


tags = {
  Owner          = "RahmatHadi"
  Project        = "CDS-VCF"
  Expiry         = "20231231"
  deploymentType = "rover"
  costCenter     = "CloudExpertServices"
  BusinessUnit   = "Squad Azure"
  DR             = "NON-DR-ENABLED"
}