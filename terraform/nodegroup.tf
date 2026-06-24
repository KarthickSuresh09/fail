resource "aws_eks_node_group" "worker_nodes" {

  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "worker-group"

  node_role_arn = aws_iam_role.node_role.arn

  subnet_ids = [
    aws_subnet.public1.id,
    aws_subnet.public2.id
  ]

  scaling_config {
    desired_size = 2
    min_size     = 2
    max_size     = 4
  }

  instance_types = ["t3.small"]

  depends_on = [
    aws_iam_role_policy_attachment.worker1,
    aws_iam_role_policy_attachment.worker2,
    aws_iam_role_policy_attachment.worker3
  ]
}
