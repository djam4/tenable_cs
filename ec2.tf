resource "aws_instance" "app_server" {
  ami           = "ami-074251216af698218"
  instance_type = "t2.micro"
  vpc_id = aws_vpc.tenable_cs_demo_vpc.id  
  user_data = <<-EOF
  #!/bin/bash -xe
curl -H 'X-Key: c3572dec9a7a3d3add0630aa54298a1b56a979471c59ae5b741967fa95d1aaf3' 'https://cloud.tenable.com/install/agent?name=Ubuntutest&groups=Group A' | bash
EOF
  tags = {
    Name = "Ubuntu-Terraform"
  }
}