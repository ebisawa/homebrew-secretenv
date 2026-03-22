# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.1.2-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.1.2-alpha/secretenv-v0.1.2-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "707021f3cb1899503ce636a3269cb8b44e819c1ece200ef12205eb9f6fe1903d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.1.2-alpha/secretenv-v0.1.2-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74c7b90ae631bc516d536491c95777708b9b868e28ecaa67a84fc929a0643dee"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.1.2-alpha/secretenv-v0.1.2-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eddeb0cf7ed9391fb04bb7c786a79a7a2c18caf7de345d084f68f268019b18f3"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
