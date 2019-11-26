# Cluster Identity
output "cluster_client_id" {
  value = azuread_service_principal.cluster_sp.application_id
}

output "cluster_sp_secret" {
  sensitive = true
  value     = random_string.cluster_sp_password.result
}

