resource "aws_ecr_repository" "backend_repo" {

  name = "springboot-backend"

  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "springboot-backend"
  }
}

resource "aws_ecr_repository" "frontend_repo" {

  name = "react-frontend"

  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "react-frontend"
  }
}
