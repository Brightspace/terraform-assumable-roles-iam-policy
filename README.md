# terraform-assumable-roles-iam-policy
Terraform module for an iam policy of assumable roles.

## Example

```
module "assumable-roles" {
  source = "github.com/Brightspace/terraform-assumable-roles-iam-policy"

  policy_name = "ExamplePolicy"
  policy_description = "The roles which can be assumed"

  role_arns = [
    "arn:aws:iam::111111111111:role/test-role-1",
    "arn:aws:iam::111111111111:role/test-role-2"
  ]
}
```

Results in the AWS IAM policy with permissions:

```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Effect": "Allow",
            "Resource": [
                "arn:aws:iam::111111111111:role/test-role-1",
                "arn:aws:iam::111111111111:role/test-role-2"
            ]
        }
    ]
}
```
