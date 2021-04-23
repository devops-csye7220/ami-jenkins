#  Jenkins AMI  <img align="right" src="https://github.com/csye7125-sp2021-advcloud/ami-jenkins/workflows/Build%20Jenkins%20AMI%20Workflow/badge.svg" />



The AMI is a supported and maintained Ubuntu 20.04 image for use on Amazon Elastic Compute Cloud (Amazon EC2). It is designed to provide a stable, secure, and high performance execution environment for applications running on Amazon EC2.

## Installation

Use the Hashicorp Packer Image to build the AMI. Also built by Github actions on merges to the upstream repo

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
