
resource "aws_instance" "server" {
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  source_dest_check           = "${var.source_dest_check}"
  subnet_id                   = "${var.subnet_id}"
  count                       = "${var.servers}" 
  availability_zone           = "${var.availability_zone}"
  security_groups             = "${var.security_groups}"
  private_ip                  = "${var.private_ip}"
  iam_instance_profile        = "${var.iam_instance_profile}"
  tags {
    Name                      = "${var.name_instance}"
  }
  provisioner "file" {
    source = "setup.sh"
  destination = "/tmp/setup.sh"
  }
  connection {
    type = "ssh"
    user = "centos"
    private_key= "${file("${var.path_to_private_key}")}"
    }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/setup.sh",
      "sudo /tmp/setup.sh"
      ]
  }
}
resource "aws_ebs_volume" "ebs_disk" {
  count             = "${var.create_ebs ? var.servers : 0}"
  availability_zone = "${var.availability_zone}"
  type              = "${var.ebs_type}"
  size              = "${var.ebs_size}"
  tags {
        Name        = "${format("${var.name_instance}-disk-%01d",count.index+1)}"
    }
}

resource "aws_volume_attachment" "ebs_att" {
  count        = "${var.servers}"
  device_name  = "${var.ebs_device_name}"
  volume_id    = "${element(aws_ebs_volume.ebs_disk.*.id, count.index+1)}"
  instance_id  = "${element(aws_instance.server.*.id, count.index+1)}"
  force_detach = true
}