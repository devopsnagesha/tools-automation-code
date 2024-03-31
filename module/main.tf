resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  tags = {
    Name = var.tools_name
  }
}

resource "aws_route53_record" "www" {
  name    = var.tools_name
  type    = "A"
  zone_id = var.zone_id
  records = [aws_instance.instance.public_ip]
  ttl     = 30
}
