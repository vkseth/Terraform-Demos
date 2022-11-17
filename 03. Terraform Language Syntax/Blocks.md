
# Block Template


# Template
```

<BLOCK TYPE> "<BLOCK LABEL>" "<BLOCK LABEL>"   {
  # Block body
  <IDENTIFIER> = <EXPRESSION> # Argument
}

```

# AWS Example
```

resource "aws_instance" "ec2demo" {                     # BLOCK
  ami           = "ami-04d29b6f966df1537"               # Argument
  instance_type = var.instance_type                     # Argument with value as expression 
                                                        #  (Variable value replaced from varibales.tf
}

```

__Terraform Block Types__

>also called as Top level block 
>can have block inside the block 

- terraform block
- provider block
- resource block
- variable block
- locals block
- data block
- module block
- output block
- provisioner block



__BLOCK LABEL__

>Can have multiple inside the BLOCK TYPE
>Service name and logical name of service 


__IDENTIFIER__

>left side value or called as argument of the respective resource


__EXPRESSION__

>right side value or called as value for the respective argument



