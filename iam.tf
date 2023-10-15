resource "aws_iam_user" "iam_user" {
  name = var.iam_username
}
resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.iam_user.name
  policy_arn = var.aws_iam_user_policy_attachment

}
