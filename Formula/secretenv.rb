# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.8.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.8.1-alpha/secretenv-v0.8.1-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "bb89e4ff4f2c957c74f8b91a4e1e26947b04b86427300137a416abbd1fd59ee9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.8.1-alpha/secretenv-v0.8.1-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40e3d848421dd36c457d75ca497dea2e73504aecd1cea45640728cc4b86c49e2"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.8.1-alpha/secretenv-v0.8.1-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d0a521091bad42f04424e54fa0b6d6a2daf1439ecc8900dc3e44136d3dd65087"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
