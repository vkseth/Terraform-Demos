# Verify Terraform install properly on jenkins image

click on New Item 
Enter Name - Terraform-validate
click on free style project 

Go to build step and select Execute Shell 
terraform --version
save and click on build now 

If everything install properly Console output will show terraform version 


```
Running as SYSTEM
Building in workspace /var/jenkins_home/workspace/terraform-validate
[terraform-validate] $ /bin/sh -xe /tmp/jenkins9536142360052697387.sh
+ terraform --version
Terraform v1.3.6
on linux_amd64
Finished: SUCCESS

```

