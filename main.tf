# This is a placeholder for your Terraform code.
# In a real scenario, you'd have more resources.

resource "aws_security_group" "your_sg" {
  name = "example-sg"
  description = "Allow SSH inbound traffic"
  # vpc_id = "vpc-..." # In a real setup, you'd need a VPC ID
}

resource "aws_security_group_rule" "allow_ssh_ingress" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["192.168.1.0/24"]  # <-- Replaced with a more specific (example) CIDR block
  security_group_id = "sg-0123456789abcdef0" # Placeholder, doesn't need to be a real ID for this test
}
