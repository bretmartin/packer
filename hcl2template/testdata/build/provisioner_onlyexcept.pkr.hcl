
// starts resources to provision them.
build {
    sources = [
        "source.virtualbox-iso.ubuntu-1204",
    ]
    source "source.amazon-ebs.ubuntu-1604" {
        name = "aws-ubuntu-16.04"
    }

    provisioner "shell" {
        only = ["virtualbox-iso.ubuntu-1204"]
    }
    provisioner "file" {
        except = ["virtualbox-iso.ubuntu-1204"]
    }
    provisioner "shell" {
        only = ["amazon-ebs.aws-ubuntu-16.04"]
    }
    provisioner "file" {
        except = ["amazon-ebs.aws-ubuntu-16.04"]
    }
}

source "virtualbox-iso" "ubuntu-1204" {
}

source "amazon-ebs" "ubuntu-1604" {
}
