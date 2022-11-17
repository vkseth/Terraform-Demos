# Terraform block 

__can also be called as__ 

    Terraform block 
    Terraform setting block 
    Terraform configration block 



- with in terraform block only contstant value can be used 
- argument may not use any input variable and no build in function can be used
- Terraform block introduced from 0.13 onward
- Terraform block is used for setting the version of the terraform we want. 
- It may also contain required_providers block inside which specifies the versions of the providers 
- Terraform block is often put into a separate file called terraform.tf as a way to separate settings into their own file.


![Screenshot](Screenshot.png)    ![Screenshot1](Screenshot2.png)