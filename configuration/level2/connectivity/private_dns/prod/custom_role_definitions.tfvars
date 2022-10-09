custom_role_definitions = {
  landgingzone_extended = {
    name        = "landingzone-networking-private-dns-extended"
    useprefix   = "true"
    description = "(prod) Provides additional permissions for the level4 principal to perform activies on the level2 private dns zones for private links."
    permissions = {
      actions = [
        "Microsoft.Network/privateDnsZones/join/action",
        "Microsoft.Network/privateEndpoints/privateDnsZoneGroups/read",
        "Microsoft.Network/privateEndpoints/privateDnsZoneGroups/write"
      ]
    }
  }
}