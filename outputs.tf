output "ec2_public_ip" {
  value = module.compute.public_ip
}

output "vpc_id" {
  value = module.network.vpc_id
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}
