terraform {
  required_version = ">= 0.15"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "literature" {
    filename = "einstein_quote.txt"
    content     = <<-EOT
      The release of atom power has changed everything except our way of thinking.
      The solution to this problem lies in the heart of mankind.
      If only I had known, I should have become a watchmaker.
    EOT
}
