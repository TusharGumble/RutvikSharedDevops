resource "aws_vpc" "tushargtestvpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"
  tags = {
    "Name"       = "${var.identifiers}vpc",
    "Created By" = var.Created_By
  }
}

resource "aws_subnet" "tushargtestpublicsubnet1a" {
  availability_zone = var.pbs_az1a
  vpc_id            = aws_vpc.tushargtestvpc.id
  cidr_block        = var.vpc_cidr_block_pbs1a
  tags = {
    "Name"       = "${var.identifiers}publicsubnet",
    "Created By" = var.Created_By
  }
}
resource "aws_subnet" "tushargtestpublicsubnet1b" {
  availability_zone = var.pbs_az1b
  vpc_id            = aws_vpc.tushargtestvpc.id
  cidr_block        = var.vpc_cidr_block_pbs1b
  tags = {
    "Name"       = "${var.identifiers}publicsubnet",
    "Created By" = var.Created_By
  }
}

resource "aws_subnet" "tushargtestprivatesubnet1b" {
  availability_zone = var.pvt_az1a
  vpc_id            = aws_vpc.tushargtestvpc.id
  cidr_block        = var.vpc_cidr_block_pvts1b
  tags = {
    "Name"       = "${var.identifiers}privatesubnet",
    "Created By" = var.Created_By
  }
}
resource "aws_subnet" "tushargtestprivatesubnet1a" {
  availability_zone = var.pvt_az1b
  vpc_id            = aws_vpc.tushargtestvpc.id
  cidr_block        = var.vpc_cidr_block_pvts1a
  tags = {
    "Name"       = "${var.identifiers}privatesubnet",
    "Created By" = var.Created_By
  }
}
resource "aws_internet_gateway" "tushargtestvpcigw" {
  vpc_id = aws_vpc.tushargtestvpc.id
  tags = {
    "Name"       = "${var.identifiers}vpcigw",
    "Created By" = var.Created_By
  }
}
resource "aws_route_table" "tushargtestpublicrtb" {
  vpc_id = aws_vpc.tushargtestvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tushargtestvpcigw.id
  }
  tags = {
    "Name"       = "${var.identifiers}publicrtb",
    "Created By" = var.Created_By
  }
}
resource "aws_route_table" "tushargtestprivatetb1a" {
  vpc_id = aws_vpc.tushargtestvpc.id
  tags = {
    "Name"       = "${var.identifiers}privatertb1a",
    "Created By" = var.Created_By
  }
}
resource "aws_route_table" "tushargtestprivatertb1b" {
  vpc_id = aws_vpc.tushargtestvpc.id
  tags = {
    "Name"       = "${var.identifiers}privatertb1b",
    "Created By" = var.Created_By
  }
}

resource "aws_route_table_association" "tushargtestpublicrtba1a" {
  route_table_id = aws_route_table.tushargtestpublicrtb.id
  subnet_id      = aws_subnet.tushargtestpublicsubnet1a.id
}
resource "aws_route_table_association" "tushartestpublicrtba1b" {
  route_table_id = aws_route_table.tushargtestpublicrtb.id
  subnet_id      = aws_subnet.tushargtestpublicsubnet1b.id
}
resource "aws_route_table_association" "tushargtestprivatertba1a" {
  subnet_id      = aws_subnet.tushargtestprivatesubnet1a.id
  route_table_id = aws_route_table.tushargtestprivatetb1a.id
}
resource "aws_route_table_association" "tushargtestprivatertba1b" {
  subnet_id      = aws_subnet.tushargtestprivatesubnet1b.id
  route_table_id = aws_route_table.tushargtestprivatertb1b.id
}


