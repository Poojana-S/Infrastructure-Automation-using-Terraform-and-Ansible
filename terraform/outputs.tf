output "control_node_public_ip" {
  value = aws_instance.control_node.public_ip
}

output "app_server_public_ip" {
  value = aws_instance.app_server.public_ip
}