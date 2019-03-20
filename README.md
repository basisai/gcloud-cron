# `gcloud` Cron

Helm Chart to deploy a Cron Job on Kubernetes to execute arbitrary `gcloud` tasks.

Credentials for the task will be provided by [Vault](https://www.vaultproject.io/) using the
[Google Cloud Secrets Engine](https://www.vaultproject.io/docs/secrets/gcp/index.html).

## Requirements

- A Kubernetes Cluster
- A [Vault](https://www.vaultproject.io/) server setup with a Kubernetes Auth Backend for the
    Kubernetes pod to authenticate with Vault and a GCS Secrets Engine Roleset configured for
    the pod to retrieve credentials for GCS.

## Usage

We recommend that you use [Terraform](https://www.terraform.io/) to deploy this Helm chart along
with the other necessary resources like configuration for Vault and GCP.

## Examples

You can find some examples of the usage of this chart in the following Terraform Modules:

- Cloud SQL Manual Backup
- GCS Bucket Copy
