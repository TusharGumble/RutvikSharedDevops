# resource "aws_vpc" "tusharvpc2test" {
#   cidr_block       = "10.0.0.0/16"
#   instance_tenancy = "default"
#   tags = {
#     "Name"       = "tusharvpc2test",
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_subnet" "tusharvpc2testpublicsubnet1a" {
#   vpc_id            = aws_vpc.tusharvpc2test.id
#   availability_zone = "us-east-1a"
#   cidr_block        = "10.0.176.0/20"
#   tags = {
#     "Name"       = "tusharvpc2testpublicsubnet1a",
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_subnet" "tusharvpc2testpublicsubnet1b" {
#   vpc_id            = aws_vpc.tusharvpc2test.id
#   availability_zone = "us-east-1b"
#   cidr_block        = "10.0.128.0/20"
#   tags = {
#     "Name"       = "tusharvpc2testpublicsubnet1b",
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_subnet" "tusharvpc2testpublicsubnet1c" {
#   vpc_id            = aws_vpc.tusharvpc2test.id
#   availability_zone = "us-east-1c"
#   cidr_block        = "10.0.144.0/20"
#   tags = {
#     "Name"       = "tusharvpc2testpublicsubnet1c",
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_subnet" "tuharvpc2testprivatesubnet1a" {
#   vpc_id            = aws_vpc.tusharvpc2test.id
#   availability_zone = "us-east-1a"
#   cidr_block        = "10.0.16.0/20"
#   tags = {
#     "Name"       = "tuharvpc2testprivatesubnet1a"
#     "created By" = "Tushar Gumble"
#   }
# }

# resource "aws_subnet" "tuharvpc2testprivatesubnet1b" {
#   vpc_id            = aws_vpc.tusharvpc2test.id
#   availability_zone = "us-east-1b"
#   cidr_block        = "10.0.32.0/20"
#   tags = {
#     "Name"       = "tuharvpc2testprivatesubnet1b"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_subnet" "tuharvpc2testprivatesubnet1c" {
#   vpc_id            = aws_vpc.tusharvpc2test.id
#   availability_zone = "us-east-1c"
#   cidr_block        = "10.0.192.0/20"
#   tags = {
#     "Name"       = "tuharvpc2testprivatesubnet1c"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_subnet" "tuharvpc2testprivatesubnet2a" {
#   vpc_id            = aws_vpc.tusharvpc2test.id
#   availability_zone = "us-east-1a"
#   cidr_block        = "10.0.224.0/20"
#   tags = {
#     "Name"       = "tuharvpc2testprivatesubnet2a"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_subnet" "tuharvpc2testprivatesubnet2b" {
#   vpc_id            = aws_vpc.tusharvpc2test.id
#   availability_zone = "us-east-1b"
#   cidr_block        = "10.0.160.0/20"
#   tags = {
#     "Name"       = "tuharvpc2testprivatesubnet2b"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_subnet" "tusharvpc2testprivatesubnet2c" {
#   vpc_id            = aws_vpc.tusharvpc2test.id
#   availability_zone = "us-east-1c"
#   cidr_block        = "10.0.0.0/22"
#   tags = {
#     "Name"       = "tuharvpc2testprivatesubnet2c"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_internet_gateway" "tusharvpc2testigw" {
#   vpc_id = aws_vpc.tusharvpc2test.id
#   tags = {
#     "Name"       = "tusharvpc2testigw"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_route_table" "tusharvpc2testpublicroutetable" {
#   vpc_id = aws_vpc.tusharvpc2test.id
#   route {
#     cidr_block="0.0.0.0/0"
#     gateway_id = aws_internet_gateway.tusharvpc2testigw.id
#   }
#   tags = {
#     "Name"       = "tusharvpc2testpublicroutetable"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_route_table" "tusharvpc2testprivateroutetable1a" {
#   vpc_id = aws_vpc.tusharvpc2test.id
#   tags = {
#     "Name"       = "tusharvpc2testprivateroutetable1a"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_route_table" "tusharvpc2testprivateroutetable1b" {
#   vpc_id = aws_vpc.tusharvpc2test.id
#   tags = {
#     "Name"       = "tusharvpc2testprivateroutetable1b"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_route_table" "tusharvpc2testprivateroutetable1c" {
#   vpc_id = aws_vpc.tusharvpc2test.id
#   tags = {
#     "Name"       = "tusharvpc2testprivateroutetable1c"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_route_table" "tusharvpc2testprivateroutetable2a" {
#   vpc_id = aws_vpc.tusharvpc2test.id
#   tags = {
#     "Name"       = "tusharvpc2testprivateroutetable2a"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_route_table" "tusharvpc2testprivateroutetable2b" {
#   vpc_id = aws_vpc.tusharvpc2test.id
#   tags = {
#     "Name"       = "tusharvpc2testprivateroutetable2b"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_route_table" "tusharvpc2testprivateroutetable2c" {
#   vpc_id = aws_vpc.tusharvpc2test.id
#   tags = {
#     "Name"       = "tusharvpc2testprivateroutetable2c"
#     "created By" = "Tushar Gumble"
#   }
# }
# resource "aws_route_table_association" "tusharvpc2testpublicrtba1a" {
#   route_table_id = aws_route_table.tusharvpc2testpublicroutetable.id
#   subnet_id      = aws_subnet.tusharvpc2testpublicsubnet1a.id
# }
# resource "aws_route_table_association" "tusharvpc2testpublicrtba1b" {
#   route_table_id = aws_route_table.tusharvpc2testpublicroutetable.id
#   subnet_id      = aws_subnet.tusharvpc2testpublicsubnet1b.id
# }
# resource "aws_route_table_association" "tusharvpc2testpublicrtba1c" {
#   route_table_id = aws_route_table.tusharvpc2testpublicroutetable.id
#   subnet_id      = aws_subnet.tusharvpc2testpublicsubnet1c.id
# }
# resource "aws_route_table_association" "tusharvpc2testprivatertba1a" {
#   route_table_id = aws_route_table.tusharvpc2testprivateroutetable1a.id
#   subnet_id      = aws_subnet.tuharvpc2testprivatesubnet1a.id
# }
# resource "aws_route_table_association" "tusharvpc2testprivatertba1b" {
#   route_table_id = aws_route_table.tusharvpc2testprivateroutetable1b.id
#   subnet_id      = aws_subnet.tuharvpc2testprivatesubnet1b.id
# }

# resource "aws_route_table_association" "tusharvpc2testprivatertba1c" {
#   route_table_id = aws_route_table.tusharvpc2testprivateroutetable1c.id
#   subnet_id      = aws_subnet.tuharvpc2testprivatesubnet1c.id
# }

# resource "aws_route_table_association" "tusharvpc2testprivatertba2a" {
#   route_table_id = aws_route_table.tusharvpc2testprivateroutetable2a.id
#   subnet_id      = aws_subnet.tuharvpc2testprivatesubnet2a.id
# }

# resource "aws_route_table_association" "tusharvpc2testprivatertba2b" {
#   route_table_id = aws_route_table.tusharvpc2testprivateroutetable2b.id
#   subnet_id      = aws_subnet.tuharvpc2testprivatesubnet2b.id
# }
# resource "aws_route_table_association" "tusharvpc2testprivatertba2c" {
#   route_table_id = aws_route_table.tusharvpc2testprivateroutetable2c.id
#   subnet_id      = aws_subnet.tusharvpc2testprivatesubnet2c.id
# }



