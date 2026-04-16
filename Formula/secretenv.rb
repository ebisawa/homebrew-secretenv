# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.6.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.6.1-alpha/secretenv-v0.6.1-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "2c9fb03f984a5a24323a220d98946e688db213914a079e31055ac805e8172a97"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.6.1-alpha/secretenv-v0.6.1-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa22ae6771e12d7fcd43717e66ba58355a563ea29f0b8e12f0071a86c67318e9"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.6.1-alpha/secretenv-v0.6.1-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a2c79c5005bd413ebb38c8c4494c407de84974fc68160d61509d240efe98505"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
