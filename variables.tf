variable "client_id" {
    default = "43d30e92-fa66-44cf-bda2-68f8386dd3ed"
}
variable "client_secret" {
    default = "Shrishti0913"
}

variable "agent_count" {
    default = 3
}

variable "ssh_public_key" {
    default = "~/source/github/akssshkey.pub"
}

variable "dns_prefix" {
    default = "k8stest"
}

variable cluster_name {
    default = "k8stest"
}

variable resource_group_name {
    default = "azure-k8stest"
}

variable location {
    default = "West Europe"
}