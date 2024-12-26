output "instance_id" {
  value = aws_instance.mock_app.id
}

output "public_ip" {
  value = aws_instance.mock_app.public_ip
}
