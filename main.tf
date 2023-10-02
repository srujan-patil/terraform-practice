resource "aws_instance" "one"{
tags={
Name = "hi-1"
Environment= "Dev"
Project = "aws"
}

ami = var.ami_id

key_name="hello"

instance_type = var.itype

vpc_security_group_ids = [aws_security_group.demo-sg.id]

root_block_device{
volume_size = var.ivolume
}
}
