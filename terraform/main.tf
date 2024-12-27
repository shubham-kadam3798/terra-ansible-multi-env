# dev-infra
# 2 ec2 1 s3 1 dynamo
module "dev-infra" {
    source = "./infra"
    env = "dev"
    instance_count = 1
    instance_type = "t2.micro"
    ami = "ami-053b12d3152c0cc71"
    volume_size = 8
}
# stg-infra
# 2 ec2 1 s3 1 dynamo
module "stg-infra" {
    source = "./infra"
    env = "stg"
    instance_count = 1
    instance_type = "t2.small"
    ami = "ami-053b12d3152c0cc71"
    volume_size = 8
}
#prd-infra
# 3 ec2 1 s3 1 dynamo
module "prd-infra" {
    source = "./infra"
    env = "prd"
    instance_count = 1
    instance_type = "t2.micro"
    ami = "ami-053b12d3152c0cc71"
    volume_size = 8
}

output "dev_infra_ec2_public_ips" {
    value = module.dev-infra.ec2_public_ips
}


output "stg_infra_ec2_public_ips" {
    value = module.stg-infra.ec2_public_ips
}

output "prd_infra_ec2_public_ips" {
    value = module.prd-infra.ec2_public_ips
}

