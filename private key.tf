resource "tls_private_key" "finalkey" {
algorithm = "RSA"
}

module "key_pair" {
source = "terraform-aws-modules/key-pair/aws"

key_name = var.NAME
public_key = trimspace(tls_private_key.wave.public_key_openssh)
}

resource "null_resource" "key-finalkey" {
  provisioner "local-exec" {
    command = <<-EOT
      sudo echo '${tls_private_key.finalkey.private_key_pem}' > ./'${var.finalkey-key}'.pem
      sudo chmod 400 ./'${var.finalkey-key}'.pem
    EOT
  }
}
