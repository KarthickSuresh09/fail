output "eks_cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "rds_endpoint" {
  value = aws_db_instance.mysql.endpoint
}

output "backend_repository_url" {
  value = aws_ecr_repository.backend_repo.repository_url
}

output "frontend_repository_url" {
  value = aws_ecr_repository.frontend_repo.repository_url
}
