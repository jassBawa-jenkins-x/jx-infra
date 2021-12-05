// ----------------------------------------------------------------------------
// Optional Variables
// ----------------------------------------------------------------------------
variable "region" {
  description = "us-east-2"
  type        = string
}

variable "profile" {
  description = "Profile stored in aws config or credentials file"
  type        = string
}

variable "cluster_version" {
  description = "1.21"
  type        = string
}

variable "vault_user" {
  description = "Administrator"
  type        = string
  default     = ""
}

variable "cluster_name" {
  description = "jenkins-x-testing"
  type        = string
  default     = ""
}

variable "force_destroy" {
  description = "Flag to determine whether storage buckets get forcefully destroyed. If set to false, empty the bucket first in the aws s3 console, else terraform destroy will fail with BucketNotEmpty error"
  type        = bool
  default     = false
}

variable "is_jx2" {
  default     = false
  type        = bool
  description = "Flag to specify if jx2 related resources need to be created"
}

variable "jx_git_url" {
  description = "https://github.com/jassBawa-jenkins-x/jx-eks-vault"
  type        = string
}

variable "jx_bot_username" {
  description = "k9h7u8"
  type        = string
}

variable "jx_bot_token" {
  description = "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"
  type        = string
}

variable "nginx_chart_version" {
  type        = string
  description = "nginx chart version"
  default     = "3.12.0"
}

variable "install_kuberhealthy" {
  description = "Flag to specify if kuberhealthy operator should be installed"
  type        = bool
  default     = true
}
