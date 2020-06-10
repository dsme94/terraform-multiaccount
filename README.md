# terraform-multiaccount
An example of how to utilise terraform providers for multi-account deployments with AWS vault. More information on AWS vault https://github.com/99designs/aws-vault.

Initialise the config using:

```terraform init -backend-config=vars/backend.hcl```

Execute a plan using:

```terraform plan -var-file=vars/vars.tfvars```

Deploy the code using:

```terraform apply -var-file=vars/vars.tfvars```

This method can also be utilised for deployments using CI/CD.

```
[profile account_one]
region            = eu-west-2
role_arn          = arn:aws:iam::account_id_account_one:role/role_to_assume
credential_source = Ec2InstanceMetadata

[profile account_two]
region            = eu-west-2
role_arn          = arn:aws:iam::account_id_account_two:role/role_to_assume
credential_source = Ec2InstanceMetadata
```

Please see the .aws folder as an example on how to setup your AWS credentials.