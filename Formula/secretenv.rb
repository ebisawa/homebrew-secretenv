# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.3.3-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.3.3-alpha/secretenv-v0.3.3-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "efa59987e56f2c353c81327a254f1646128f328981f43ae9a99838e69623f8f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.3.3-alpha/secretenv-v0.3.3-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06b5663f8b24f2cdab26b3ab170e88f7f4d6c4d81b190ea9f42bfaa9adb5ba2b"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.3.3-alpha/secretenv-v0.3.3-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "399124294d5aeeb24f289bd64a0aa57450843f083cd9baaae013322444a90ce0"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
