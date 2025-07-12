resource "aws_security_group_rule" "allow_ssh_ingress" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]  # <-- This is the vulnerability tfsec will flag
  security_group_id = "sg-0123456789abcdef0" # Placeholder, doesn't need to be a real ID for this test
}

resource "aws_security_group" "your_sg" {
  name = "example-sg"
  description = "Allow SSH inbound traffic"
}
