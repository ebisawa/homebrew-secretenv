# typed: false
# frozen_string_literal: true

class Secretenv < Formula
  desc "Serverless CLI for secure secret sharing with HPKE encryption"
  homepage "https://github.com/ebisawa/secretenv"
  version "0.2.1-alpha"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.2.1-alpha/secretenv-v0.2.1-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "56adfe558bf171e469fef41d28cc83410b730566320272dfb02dcf609ac1e89e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.2.1-alpha/secretenv-v0.2.1-alpha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "444fc81f7d5392c1fcf14ca382625faec38aea57bff349e4ec240ce4aa140d8c"
    end
    on_arm do
      url "https://github.com/ebisawa/secretenv/releases/download/v0.2.1-alpha/secretenv-v0.2.1-alpha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "876fb0b12bf586298c9bdc4a25fa35d307f857b2a0e365fbaa176505d004b2f6"
    end
  end

  def install
    bin.install "secretenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretenv --version")
  end
end
