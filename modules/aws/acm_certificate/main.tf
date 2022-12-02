terraform {
  required_version = ">= 0.12.0"
}

resource "aws_acm_certificate" "cert" {
  domain_name               = var.domain_name
  validation_method         = var.validation_method
  subject_alternatibjectnatikjwdbcukegbvubve_names
  tags                      = var.tags
  
  
  lifecycle {
    create_before_destroy = true
  }
}
