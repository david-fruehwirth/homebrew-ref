class Ref < Formula
  desc "Git-like reference manager for scientific writing"
  homepage "https://github.com/david-fruehwirth/ref"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/david-fruehwirth/ref/releases/download/v0.1.5/ref-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "0af6330ea825f32b150f4618acd95e0ffd4d85bfac3d2f5eabd74791b389fc5d"
    end

    on_intel do
      url "https://github.com/david-fruehwirth/ref/releases/download/v0.1.5/ref-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "b48844bfb20b279894037b486943988ad3face07898aea86bbab9c7e00b8747c"
    end
  end

  def install
    bin.install "ref"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ref --version")
  end
end
