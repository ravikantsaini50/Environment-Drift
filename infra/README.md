# CloudNotes local Terraform validation

This directory is a complete, zero-cost model of the CloudNotes infrastructure capstone. The five child modules represent network, compute, database, storage, and IAM. They use `null_resource` so the configuration can be initialized and planned without a cloud account or paid resources.

Run these commands from this directory:

```text
terraform init
terraform validate
terraform plan
```

Do not run `terraform apply` for the capstone. The module outputs and root wiring intentionally demonstrate the dependency graph: compute consumes the network app subnet and IAM service account, while database consumes the network and database subnet outputs.
