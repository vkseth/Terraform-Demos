# Create AWS resource with Terraform, Git, Jenkins pipeline 


## Create credentials first

__AWS Console__

IAM console - click on user - Add user -select Access key - Programmatic access - assign permission - create user
make a note of access key and secret key 

__Jenkins Console__


Go to manage jenkins - manage credentails - system - global credentials - add credentails - in kind select secret text 

AWS_ACCESS_KEY_ID - <secret value>
AWS_SECRET_ACCESS_KEY - <secret value>



__Create Pipeline Job__ 

click on New Item 
Enter Name - Terraform-job
click on pipeline project 

scroll down and go to Pipeline
select pipeline script from scm 
in SCM  select git 
enter Repository URL - https://github.com/vkseth/terraform-jenkins.git # add credentials if require 

Make sure in Branches to build change master branch to main branch 
In Script Path - Jenkinsfile 
save the job - build now 


