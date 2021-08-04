variable "project_id" {
  description = "The project ID to host the cluster in"
}
variable "cluster_name" {
  description = "Nome do Cluster GKE"
  default     = "gke-observability"
}
variable "env_name" {
  description = "O nome do ambiente do Cluster GKE"
  default     = "prod"
}
variable "region" {
  description = "A região que vai hospedar o Cluster GKE"
  default     = "us-central1"
}
variable "network" {
  description = "A rede VPC criada para o cluster GKE"
  default     = "gke-network"
}
variable "subnetwork" {
  description = "A subrede criada para o Cluster GKE"
  default     = "gke-subnet"
}
variable "ip_range_pods_name" {
  description = "O intervalo de ip secundário para os pods"
  default     = "ip-range-pods"
}
variable "ip_range_services_name" {
  description = "O intervalo de ip secundário para os services"
  default     = "ip-range-services"
}