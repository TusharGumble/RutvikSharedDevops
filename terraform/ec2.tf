resource "aws_instance" "tushargtest" {
  ami           = "ami-03cd80cfebcbb4481"
  instance_type = "t2.micro"
  key_name      = "tushartftestkey"
  tags = {
    Name        = "Tushartfmachine"
    Environment = "QA1"
  }
}