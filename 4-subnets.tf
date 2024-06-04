resource "aws_subnet" "private_zone1" {
  vpc_id = aws_vpc.eks-main.id
  cidr_block = "40.0.0.0/19"
  availability_zone = local.zone1

  tags = {
    "Name"                            = "${local.env}-private-${local.zone1}"
    "kubernetes.io/role/internal-elb" =	"1"
  }
} 

resource "aws_subnet" "private_zone2" {
  vpc_id = aws_vpc.eks-main.id
  cidr_block = "40.0.32.0/19"
  availability_zone = local.zone2

  tags = {
    "Name"                            = "${local.env}-private-${local.zone2}"
    "kubernetes.io/role/internal-elb" =	"1"
  }
}

resource "aws_subnet" "public_zone1" {
  vpc_id                    = aws_vpc.eks-main.id
  cidr_block                = "40.0.64.0/19"
  availability_zone         = local.zone1
  map_public_ip_on_launch   = true

  tags = {
    "Name"                            = "${local.env}-private-${local.zone1}"
    "kubernetes.io/role/internal-elb" =	"1"
  }
} 

resource "aws_subnet" "public_zone2" {
  vpc_id                    = aws_vpc.eks-main.id
  cidr_block                = "40.0.96.0/19"
  availability_zone         = local.zone2
  map_public_ip_on_launch   = true

  tags = {
    "Name"                            = "${local.env}-private-${local.zone2}"
    "kubernetes.io/role/internal-elb" =	"1"
  }
} 