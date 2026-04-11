# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.4.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.4.1-alpha/secretenv-v0.4.1-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "1e90543123ce0ec760f33a2da0516644540e02f183580e14b0fab4edb263e238"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.4.1-alpha/secretenv-v0.4.1-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0769110a8046034b1de455eb1cf877d96a34cea9c527939d5bc8cf5e95c8f9e6"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.4.1-alpha/secretenv-v0.4.1-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18473d3452be826772944d0ffc068dd1c48cdacda69e1ca8d8fc86faef444570"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
