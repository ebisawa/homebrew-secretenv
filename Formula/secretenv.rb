# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.7.2-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.7.2-alpha/secretenv-v0.7.2-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "432830bc1c05aeaa34765db4b63a2650abbc0b809cc64c4155d7fd40d0952499"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.7.2-alpha/secretenv-v0.7.2-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c968cd7e56b2b40498f9a788bb91f44527d212b685992c332c90530631473109"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.7.2-alpha/secretenv-v0.7.2-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e504b354178716124523ad41fde7a620ff93ae66532f2337c4847b84abf716d1"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
