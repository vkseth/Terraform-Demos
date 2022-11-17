#!/bin/bash 
set -e
curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash
tflint --init
tflint


=====================



#!/bin/bash 

set -e
sudo curl --location "https://github.com/aquasecurity/tfsec/releases/latest/download/tfsec-linux-amd64" --output "/usr/bin/tfsec"

sudo chmod u+x /usr/bin/tfsec 

sudo tfsec


## hook will work before the pre-commit on local machine

#Git hooks are scripts that run automatically every time a particular event occurs in a Git repository. They let you customize Git’s internal behavior and trigger customizable 
actions at key points in the development life cycle.
==========


tfsec.yml



- id: tflint
  name: tflint
  description: linter for terraform code
  entry: hooks/tflint.sh
  language: script
  files: \.tf$
  exclude: \.+.terraform\/.*$

  