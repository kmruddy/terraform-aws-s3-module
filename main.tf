data "aws_subnet" "default" {
  id = var.subnet_id
}

data "aws_security_group" "elb" {
  id = var.sg_id
}

resource "random_pet" "elb_name" {
  length    = 2
  separator = "-"
}

resource "aws_elb" "web" {
  name = "kr-${var.name}-${random_pet.elb_name.id}"

  subnets         = [data.aws_subnet.default.id]
  security_groups = [data.aws_security_group.elb.id]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  idle_timeout                = var.idle_timeout
  connection_draining         = var.connection_draining
  connection_draining_timeout = var.connection_draining_timeout

  tags = {
    Name = var.tag_name
  }
}
