resource "aws_iam_policy" "policy" {
  name        = "${var.policy_name}"
  description = "${var.policy_description}"
  policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Resource": [
        ${join( ",", formatlist( "\"%s\"", var.role_arns ) )}
      ]
    }
  ]
}
POLICY
}