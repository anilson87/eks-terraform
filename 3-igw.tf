resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.eks-main.id

    tags = {
        Name = "${local.env}-igw"
    }
}