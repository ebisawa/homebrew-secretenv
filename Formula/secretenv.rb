# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.9.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.9.1-alpha/secretenv-v0.9.1-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "d9ac7f190ed35805e7b36cd185c652ccd4bfe5c36ea05ccb884b76b07905cc8d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.9.1-alpha/secretenv-v0.9.1-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2be296ec138803af04e018f0d7e7bf739c0ce1e7b82980ad84e0e890f13c4aaa"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.9.1-alpha/secretenv-v0.9.1-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49065a036276dde700bd1cc9e6c93b537fc1326cd9005ef5a5cc074874c944ef"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
