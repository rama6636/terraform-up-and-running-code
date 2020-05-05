# Server Configuration with Variables

This folder contains an example [Terraform](https://www.terraform.io/) configuration that deploys a web server (using 
[EC2](https://aws.amazon.com/ec2/)), in an [Amazon Web Services (AWS) account](http://aws.amazon.com/). 

For more info, please see Chapter 1, "Why Terraform", of 
*[Terraform: Up and Running](http://www.terraformupandrunning.com)*.

## Pre-requisites

* You must have [Terraform](https://www.terraform.io/) installed on your computer. 
* You must have an [Amazon Web Services (AWS) account](http://aws.amazon.com/).

Please note that this code was written for Terraform 0.12.x.

### Step 1

* Write the `main.tf` file based on the slides covered in the previous section

### Step 2

* Deploy and verify the configuration using the steps below
```
terraform init
terraform apply
```

* DO NOT run the `main.tf` given here - it is only for your reference if you get stuck

### Step 3

* Clean up when you're done:

```
terraform destroy
```
