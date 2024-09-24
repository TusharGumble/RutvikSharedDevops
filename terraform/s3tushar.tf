resource "aws_s3_bucket" "trgtushartestbucket" {
  bucket = "trgtushartestbucket"
  
  tags ={
    "Name" ="TGTushartestbucket"
    "Created By"= "Tushar Gumble"
  }
}