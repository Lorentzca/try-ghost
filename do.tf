# Set variables
variable "do_token" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
    token = "${var.do_token}"
}

# Create a new Web droplet
resource "digitalocean_droplet" "ghost" {
    image = "centos-6-5-x64"
    name = "ghost"
    region = "sgp1"
    size = "512mb"
}

# Output IP Address

output "address" {
    value = "${digitalocean_droplet.ghost.ipv4_address}"
}
