resource "aws_dynamodb_table" "encryption_table" {
    name = "EncryptionDataTable"
    billing_mode = "PROVISIONED"
    read_capacity  = 5
    write_capacity = 5
    hash_key       = "RecordID"
    range_key      = "ItemType"

    attribute {
        name = "RecordID"
        type = "S"
    }

    attribute {
        name = "ItemType"
        type = "S"
    }

    tags = {
        Name = "EncryptionData"
    }
}