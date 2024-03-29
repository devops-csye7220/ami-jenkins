#  Part 1 - Jenkins AMI 

The AMI is a supported and maintained Ubuntu 20.04 image for use on Amazon Elastic Compute Cloud (Amazon EC2). It is designed to provide a stable, secure, and high performance execution environment for applications running on Amazon EC2.

## Installation

Use the Hashicorp Packer Image to build the AMI. Also built by Github actions on push to the repository. Additionally, securly install `aws cli` once the `EC2 instance` for the Jenkins is running.

```
hashicorp/packer
```

## Setup
```json
{
    "aws_region": "",
    "aws_access_key": "",
    "aws_secret_key": "",
    "source_ami": "",
    "ssh_username": "",
    "ami_users": ""
}
```

## Usage

```bash
packer validate -var-file=./vars-local.json ubuntu-ami.json
packer build -var-file=./vars-local.json ubuntu-ami.json
```
