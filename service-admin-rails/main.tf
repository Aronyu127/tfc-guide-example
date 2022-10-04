resource "aws_cloudwatch_log_group" "this" {
  name       = "${var.environment}-${var.app_name}"
  retention_in_days = 1
}

resource "aws_ecs_task_definition" "this" {
  family = "${var.app_name}"

  container_definitions = <<EOF
[
  {
    "name": "${var.app_name}",
    "image": "${var.app_name}",
    "cpu": 256,
    "memory": 1024,
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-region": "${var.aws_region}",
        "awslogs-group": "${aws_cloudwatch_log_group.this.name}",
        "awslogs-stream-prefix": "ec2"
      }
    }
  }
]
EOF
}

resource "aws_ecs_service" "this" {
  name            = "${var.app_name}"
  cluster         = var.cluster_id
  task_definition = aws_ecs_task_definition.this.arn

  desired_count = 1

  deployment_maximum_percent         = 100
  deployment_minimum_healthy_percent = 0
}
