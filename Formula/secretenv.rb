# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.10.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.10.1-alpha/secretenv-v0.10.1-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "9862513924666edaac1c21e24b1624a74778ba6c8ef40d9af68cc9f1acf3bb0c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.10.1-alpha/secretenv-v0.10.1-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b5234a4a32f6c2d6ae96632896d07344f41074be87f0112b13659e4292c0ffe"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.10.1-alpha/secretenv-v0.10.1-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e798caea2968ef80824c6ac9d970f0d821f3f3e2fa3a133f6e410bdcf1d42c7"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
