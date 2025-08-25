terraform {
    required_version = ">= 1.12.0"
    required_providers {
        google = {
            source  = "hashicorp/google"
            version = "~> 6.47.0"
        }
    }
    backend "gcs" {
        bucket  = "lif-as-code"
        prefix  = "env/prod"
    }
}


