resource "aws_instance" "tito_server" {
    count = var.counter
    ami = var.ami
    instance_type = var.instance_type

    tags = merge(
        var.tags,
        {
            Name = title("tito server ${count.index +1}")
            Date = formatdate("EEEE, DD-MMM-YY hh:mm:ss ZZZ", timestamp())
            
        },
    )
}
resource "aws_eip" "ip" {
    count = var.counter
    instance = aws_instance.tito_server[count.index].id
    tags = merge(
        var.tags,
        {
            Name = title("tito server ${count.index +1}")
            Date = formatdate("EEEE, DD-MMM-YY hh:mm:ss ZZZ", timestamp())
        },
    )

    depends_on = [aws_instance.tito_server]
}