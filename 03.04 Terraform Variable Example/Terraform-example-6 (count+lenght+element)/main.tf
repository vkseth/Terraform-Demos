# using element function 
# count not work with map 

resource "aws_instance" "web" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = var.instance_type_map["prod"]
  #instance_type     = element(var.instance_type_list, count.index )
  key_name          = "vicky"
  count             = length(var.availability_zone) # using lenght here if in future if value change we don't have to change the value 
  availability_zone = element(var.availability_zone, count.index)
  # availability_zone = element(var.availability_zone, 0)
  tags = {
    Name = "demo-${count.index}"
    ENV  = "Prod"
  }
}



