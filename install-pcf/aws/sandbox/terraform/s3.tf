resource "aws_s3_bucket" "pcf-bosh" {
    bucket = "${var.prefix}-pcf-bosh"
    acl = "private"
    force_destroy= true

    logging {
        target_bucket = "${var.log_bucket_target}"
        target_prefix = "${var.prefix}-bosh/"
    }

    tags {
        Name = "${var.prefix}-pcf-bosh"
        Environment = "${var.prefix}"
    }
}

resource "aws_s3_bucket" "pcf-buildpacks" {
    bucket = "${var.prefix}-pcf-buildpacks"
    acl = "private"
    force_destroy= true

    logging {
        target_bucket = "${var.log_bucket_target}"
        target_prefix = "${var.prefix}-buildpacks/"
    }

    tags {
        Name = "${var.prefix}-pcf-buildpacks"
        Environment = "${var.prefix}"
    }
}

resource "aws_s3_bucket" "pcf-droplets" {
    bucket = "${var.prefix}-pcf-droplets"
    acl = "private"
    force_destroy= true

    logging {
        target_bucket = "${var.log_bucket_target}"
        target_prefix = "${var.prefix}-droplets/"
    }

    tags {
        Name = "${var.prefix}-pcf-droplets"
        Environment = "${var.prefix}"
    }
}

resource "aws_s3_bucket" "pcf-packages" {
    bucket = "${var.prefix}-pcf-packages"
    acl = "private"
    force_destroy= true

    logging {
        target_bucket = "${var.log_bucket_target}"
        target_prefix = "${var.prefix}-packages/"
    }

    tags {
        Name = "${var.prefix}-pcf-packages"
        Environment = "${var.prefix}"
    }
}

resource "aws_s3_bucket" "pcf-resources" {
    bucket = "${var.prefix}-pcf-resources"
    acl = "private"
    force_destroy= true

    logging {
        target_bucket = "${var.log_bucket_target}"
        target_prefix = "${var.prefix}-resources/"
    }

    tags {
        Name = "${var.prefix}-pcf-resources"
        Environment = "${var.prefix}"
    }
}
