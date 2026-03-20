# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.1.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.1.1-alpha/secretenv-v0.1.1-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "9cd8c8de6643b83240434a072b66d91abcc931e10095a1f0b9604c837c7531ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.1.1-alpha/secretenv-v0.1.1-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ad59835c02f2765a5427d523ad66f46108b293c89a565f6644d82aed3a1c9fc"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.1.1-alpha/secretenv-v0.1.1-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb1dada7fc67dafa26118440deaba331ea1cb880abf358e6a526497db37f72da"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
