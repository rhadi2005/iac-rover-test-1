landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level0"
  key                 = "launchpad_credentials"
  tfstates = {

    launchpad = {
      level   = "current"
      tfstate = "launchpad.tfstate"
    }

  }
}
