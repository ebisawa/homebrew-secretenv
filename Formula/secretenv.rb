# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.3.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.3.1-alpha/secretenv-v0.3.1-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "990a8b8a86e2b21f3b7b405492056f9d596d75cfb3cf4044c34e27d312fcaa3c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.3.1-alpha/secretenv-v0.3.1-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2f12ec0349d0776436dfe64935f849086bf0b877af1d575f4a8497704ca1f14"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.3.1-alpha/secretenv-v0.3.1-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0406156ce19057e9abc4d123c303b338c6c49a11bc074e5de2a5afb64537a470"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
