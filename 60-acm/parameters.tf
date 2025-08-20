# we need to export the certificate for further use using arn--Amazon Resource name
resource "aws_ssm_parameter" "acm_certificate_arn" {
  name  = "/${var.project}/${var.environment}/acm_certificate_arn"
  type  = "String"
  value = aws_acm_certificate.jana-84s.arn
}


