provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "example" {
  name = var.username
}

resource "aws_iam_user_login_profile" "example" {
  user                    = aws_iam_user.example.name
  password_length         = 16
  password_reset_required = true
}

resource "aws_iam_user_policy_attachment" "example" {
  count      = length(var.policy_arn)
  user       = aws_iam_user.example.name
  policy_arn = var.policy_arn[count.index]
}

resource "aws_iam_user_group_membership" "example" {
  count  = length(var.group_names)
  user   = aws_iam_user.example.name
  groups = [var.group_names[count.index]]
}

resource "local_file" "user_credentials" {
  content  = <<-EOF
    Username,Password
    ${aws_iam_user.example.name},${aws_iam_user_login_profile.example.password}
  EOF
  filename = "${path.module}/user_credentials.csv"

  depends_on = [aws_iam_user_login_profile.example]
}

output "user_password" {
  value     = aws_iam_user_login_profile.example.password
  sensitive = true
}

output "csv_file_path" {
  value = local_file.user_credentials.filename
}