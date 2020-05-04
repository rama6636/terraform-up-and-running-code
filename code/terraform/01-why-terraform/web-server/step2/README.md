# Server with Configuration

This folder contains an example [Terraform](https://www.terraform.io/) configuration that deploys a web server (using 
[EC2](https://aws.amazon.com/ec2/)), in an [Amazon Web Services (AWS) account](http://aws.amazon.com/). 

## Pre-requisites

* You must have [Terraform](https://www.terraform.io/) installed on your computer. 
* You must have an [Amazon Web Services (AWS) account](http://aws.amazon.com/).

Please note that this code was written for Terraform 0.12.x.

## Quick start

### Step 1
* Modify the `main.tf` code to include all improvements mentioned in the slides

### Step 2
* Deploy the code:

```
terraform init
terraform apply
```

### Step 3
* Experiment with all 4 ways of giving the value for the `server_port` variable

### Step 4

* Clean up when you're done:

```
terraform destroy
```