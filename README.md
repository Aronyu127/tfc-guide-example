# Afun Terraform

### Provider setup
- You should setup the AWS credential first

1. Add following setting to `~/.aws/credentials` 
   ```
   [afun]
   aws_access_key_id = xxxxxxxxx
   aws_secret_access_key = xxxxxxxxx
   ```

2. And for your `~/.zshrc` or `~/.bashrc`
   ```
   export AWS_PROFILE='afun'
   ```


### Init Command
- terraform init (initialize the terraform)
- terraform fmt (format and validate the config)
- terraform validate 


### 
- terraform show (show current state)
- terraform state (check resources)
- **terraform apply** (actually create or update resource)
- **terraform destroy** (destroy resource