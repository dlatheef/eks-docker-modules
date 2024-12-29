resource "aws_security_group" "allow_all" {
  name_prefix = "${var.environment}-${var.project}-allow-all-"
  description = "Security group to allow all traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # -1 means all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # -1 means all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Environment = var.environment
    Project     = var.project
    Owner       = var.owner
    Name = "${var.environment}-${var.project}-allow-all"
  }
}



