landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level0"
  key                 = "rha-104fs"
  tfstates = {
    launchpad = {
      level   = "current"
      tfstate = "caf_launchpad.tfstate"
    }
    #launchpad_credentials
  }
}
