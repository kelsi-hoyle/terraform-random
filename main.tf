terraform {
  cloud {
    # local dev testing
    workspaces {
      name = "terraform-random"
    }

    organization = "hashicorp"
    hostname = "tfcdev-da6ca1b6.ngrok.app"
  }

 # empty change
  required_providers {
  #  amd provider
  #    discord = {
  #    source = "prod9/discord"
  #    version = "0.0.4-p9"
  #  }
    tfe = {
      version = "~> 0.64.0"
    }
   }


}

resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 13
}

output "random" {
  value = random_id.random.hex
}
