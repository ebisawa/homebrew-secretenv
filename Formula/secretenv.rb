# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.3.2-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.3.2-alpha/secretenv-v0.3.2-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "a01ebe4169774cd4b808d8ab7b95535564780d8a592115d39adbe77bf079f955"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.3.2-alpha/secretenv-v0.3.2-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59b372f9adf50f204a4688a260a7968a65fc347cc58c1c832751ba105d71fcaa"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.3.2-alpha/secretenv-v0.3.2-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6057d7827fea996d1904a0a384ec27101fcd62b38e5ce858ec1743ff0e3c7269"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
