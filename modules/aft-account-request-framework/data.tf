data "aws_region" "aft-management" {}

data "aws_caller_identity" "aft-management" {}

data "aws_caller_identity" "ct-management" {
  provider = aws.ct_management
}

data "aws_iam_policy" "AWSLambdaBasicExecutionRole" {
  name = "AWSLambdaBasicExecutionRole"
}

data "aws_iam_policy" "AWSLambdaVPCAccessExecutionRole" {
  name = "AWSLambdaVPCAccessExecutionRole"
}

data "aws_availability_zones" "available" {
  state = "available"
}

######################################
# VPC Endpoints
######################################

#### CodeBuild ####

data "aws_vpc_endpoint_service" "codebuild" {
  service = "codebuild"
}

data "aws_subnet_ids" "codebuild" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.codebuild.availability_zones
  }
}

#### CodeCommit ####

data "aws_vpc_endpoint_service" "codecommit" {
  service = "codecommit"
}

data "aws_subnet_ids" "codecommit" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.codecommit.availability_zones
  }
}

#### git-codecommit ####

data "aws_vpc_endpoint_service" "git-codecommit" {
  service = "git-codecommit"
}

data "aws_subnet_ids" "git-codecommit" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.git-codecommit.availability_zones
  }
}

#### codepipeline ####

data "aws_vpc_endpoint_service" "codepipeline" {
  service = "codepipeline"
}

data "aws_subnet_ids" "codepipeline" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.codepipeline.availability_zones
  }
}

#### servicecatalog ####

data "aws_vpc_endpoint_service" "servicecatalog" {
  service = "servicecatalog"
}

data "aws_subnet_ids" "servicecatalog" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.servicecatalog.availability_zones
  }
}

#### lambda ####

data "aws_vpc_endpoint_service" "lambda" {
  service = "lambda"
}

data "aws_subnet_ids" "lambda" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.lambda.availability_zones
  }
}

#### kms ####

data "aws_vpc_endpoint_service" "kms" {
  service = "kms"
}

data "aws_subnet_ids" "kms" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.kms.availability_zones
  }
}

#### logs ####

data "aws_vpc_endpoint_service" "logs" {
  service = "logs"
}

data "aws_subnet_ids" "logs" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.logs.availability_zones
  }
}

#### events ####

data "aws_vpc_endpoint_service" "events" {
  service = "events"
}

data "aws_subnet_ids" "events" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.events.availability_zones
  }
}

#### states ####

data "aws_vpc_endpoint_service" "states" {
  service = "states"
}

data "aws_subnet_ids" "states" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.states.availability_zones
  }
}

#### ssm ####

data "aws_vpc_endpoint_service" "ssm" {
  service = "ssm"
}

data "aws_subnet_ids" "ssm" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.ssm.availability_zones
  }
}

#### sns ####

data "aws_vpc_endpoint_service" "sns" {
  service = "sns"
}

data "aws_subnet_ids" "sns" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.sns.availability_zones
  }
}

#### sqs ####

data "aws_vpc_endpoint_service" "sqs" {
  service = "sqs"
}

data "aws_subnet_ids" "sqs" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.sqs.availability_zones
  }
}

#### sts ####

data "aws_vpc_endpoint_service" "sts" {
  service = "sts"
}

data "aws_subnet_ids" "sts" {
  vpc_id = aws_vpc.aft_vpc.id

  filter {
    name   = "subnet-id"
    values = [aws_subnet.aft_vpc_private_subnet_01.id, aws_subnet.aft_vpc_private_subnet_02.id]
  }

  filter {
    name   = "availability-zone"
    values = data.aws_vpc_endpoint_service.sts.availability_zones
  }
}
