# google_compute_firewall.default:
resource "google_compute_firewall" "default" {
    creation_timestamp      = "2020-04-21T07:49:31.427-07:00"
    destination_ranges      = []
    direction               = "INGRESS"
    disabled                = false
    id                      = "projects/parabolic-eon-274403/global/firewalls/jenkins-1-tcp-443"
    name                    = "jenkins-1-tcp-443"
    network                 = "https://www.googleapis.com/compute/v1/projects/parabolic-eon-274403/global/networks/default"
    priority                = 1000
    project                 = "parabolic-eon-274403"
    self_link               = "https://www.googleapis.com/compute/v1/projects/parabolic-eon-274403/global/firewalls/jenkins-1-tcp-443"
    source_ranges           = [
        "0.0.0.0/0",
    ]
    source_service_accounts = []
    source_tags             = []
    target_service_accounts = []
    target_tags             = [
        "jenkins-1-deployment",
    ]

    allow {
        ports    = [
            "443",
        ]
        protocol = "tcp"
    }

    timeouts {}
}

# google_compute_firewall.test-http:
resource "google_compute_firewall" "test-http" {
    creation_timestamp      = "2020-10-09T07:08:58.177-07:00"
    destination_ranges      = []
    direction               = "INGRESS"
    disabled                = false
    id                      = "projects/parabolic-eon-274403/global/firewalls/test-http"
    name                    = "test-http"
    network                 = "https://www.googleapis.com/compute/v1/projects/parabolic-eon-274403/global/networks/example-vpc"
    priority                = 1000
    project                 = "parabolic-eon-274403"
    self_link               = "https://www.googleapis.com/compute/v1/projects/parabolic-eon-274403/global/firewalls/test-http"
    source_ranges           = [
        "0.0.0.0/0",
        "192.168.2.0/24",
    ]
    source_service_accounts = []
    source_tags             = []
    target_service_accounts = []
    target_tags             = [
        "http-server",
    ]

    allow {
        ports    = [
            "80",
            "8080",
            "8081",
        ]
        protocol = "tcp"
    }

    timeouts {}
}
