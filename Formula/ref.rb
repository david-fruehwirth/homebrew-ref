class Ref < Formula
  desc "Git-like reference manager for scientific writing"
  homepage "https://github.com/david-fruehwirth/ref"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/david-fruehwirth/ref/releases/download/v0.1.0/ref-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8ef9cd71c90506a54d2b947a4f8733d69549e6f0f985e6c843472fdc544a49ee"
    end

    on_intel do
      url "https://github.com/david-fruehwirth/ref/releases/download/v0.1.0/ref-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "af0a5bef54e9821a6bfa4be349e0b57e9115b55e98c20ae5a6dfb124fb72149d"
    end
  end

  def install
    bin.install "ref"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ref --version")
  end
end
