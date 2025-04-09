resource "aws_lambda_function" "this" {
  function_name = "test-lambda"
  role          = "arn:aws:iam::520196876033:role/s3-event-lambda-dev"
  handler       = "main.lambda_handler"
  runtime       = "python3.10"
  filename      = "${path.module}/app/lambda_function.zip"
  source_code_hash = filebase64sha256("${path.module}/app/lambda_function.zip")
}
