terraform {
  cloud {
    # local dev testing
    workspaces {
      name = "terraform-random"
    }

    organization = "hashicorp"
    hostname = "tfcdev-da6ca1b6.ngrok.app"
  }

  # amd provider
  # required_providers {
  #    discord = {
  #    source = "prod9/discord"
  #    version = "0.0.4-p9"
  #  }
  # }
}

resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 12
}

output "random" {
  value = random_id.random.hex
}
