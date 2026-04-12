# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.5.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.5.1-alpha/secretenv-v0.5.1-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "1ee360c1e06f618a6637ebf94aee2d15b57257223be95e728cdc750485666b1a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.5.1-alpha/secretenv-v0.5.1-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b29fa2838ff7c281864087cbe73935891e186631da68d4f0eb92de6ea12d94c"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.5.1-alpha/secretenv-v0.5.1-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "88e5d4fb48124dfec08c04c40b0caa2d7b09e6ee173acb51bacd06cc681ddba5"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
