class Ref < Formula
  desc "Git-like reference manager for scientific writing"
  homepage "https://github.com/david-fruehwirth/ref"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/david-fruehwirth/ref/releases/download/v0.1.3/ref-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "79db7e902e757bfc5d3022d60f0ea3337ad2c2e26d4944a97fd19b5f734455be"
    end

    on_intel do
      url "https://github.com/david-fruehwirth/ref/releases/download/v0.1.3/ref-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "fb8c3783614ada207d3e82337a24d3ff4b2d0a2a13e33f631d19ece92f0556de"
    end
  end

  def install
    bin.install "ref"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ref --version")
  end
end
