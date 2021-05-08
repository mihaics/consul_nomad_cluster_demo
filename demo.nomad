job "docs" {
  datacenters = ["dc1"]

  group "example" {
    network {
    
      port "http" {
        static = "5678"
  
      }
    }
    task "server" {
      service {
        tags = ["demo", "docs"]

        port = "http"

        meta {
          meta = "docs service"
        }

        check {
          type     = "tcp"
          port     = "http"
          interval = "10s"
          timeout  = "2s"
        }
      }


      driver = "docker"
      config {
        image = "hashicorp/http-echo"
        ports = ["http"]
        args = [
          "-listen",
          ":5678",
          "-text",
          "hello world",
        ]
      }
    }
  }
}
