locals {
  tags    = merge(var.tags, { tf-module-name = "alb" }, { env = var.env })
  lb_name = var.internal ? "${var.env}-internal-alb" : "${var.env}-public-alb"
}