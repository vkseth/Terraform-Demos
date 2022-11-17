Installing TFlint on linux 


curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash

plugin "aws" {
    enabled = true
    version = "0.18.0"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

tflint --init 

tflint


Installing TFSec on linux 

sudo curl --location "https://github.com/aquasecurity/tfsec/releases/latest/download/tfsec-linux-amd64" --output "/usr/bin/tfsec"

sudo chmod u+x /usr/bin/tfsec 

sudo tfsec



==========
working github action 


name: tfsec
on:
  push:
    branches:
      - main
  pull_request:
jobs:
  tfsec:
    name: tfsec
    runs-on: ubuntu-latest

    steps:
      - name: Clone repo
        uses: actions/checkout@master
      - name: tfsec
        uses: aquasecurity/tfsec-action@v1.0.0
        with:
          soft_fail: true



======================

=====

version: 0.2
phases:
  install: 
    commands:
      - curl --location "https://github.com/aquasecurity/tfsec/releases/latest/download/tfsec-linux-amd64" --output "/usr/bin/tfsec"
      - chmod u+x /usr/bin/tfsec
      - echo "Running tfsec"

  build:
    commands:
      ./usr/bin/tfsec
===============


 name: tfsec-pr-commenter
 on:
   pull_request:
 jobs:
   tfsec_commenter:
     name: tfsec PR commenter
     runs-on: ubuntu-latest

     steps:
       - name: Clone repo
         uses: actions/checkout@master

       - name: tfsec commenter
         uses: tfsec/tfsec-pr-commenter-action@main
         with:
           github_token: ${{ secrets.GITHUB_TOKEN }}