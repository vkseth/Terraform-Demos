__Initialize the packer directory__

packer init 

__validate packer or json file__ 

packer validate packer-example.json


__to create ami__


packer build packer-example.json 

or

packer build -machine-readable packer-example.json


Go to ec2 console and check for ami and machine creation 

................