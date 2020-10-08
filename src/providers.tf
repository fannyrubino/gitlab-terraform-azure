provider "azuread" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "=0.10.0"

  client_id     = "${AZURE_CLIENT_ID}"
  client_secret = "${AZURE_CLIENT_SECRET}"
  tenant_id     = "${AZURE_TENANT_ID}"
}