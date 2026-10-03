class Ref < Formula
  desc "Git-like reference manager for scientific writing"
  homepage "https://github.com/david-fruehwirth/ref"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/david-fruehwirth/ref/releases/download/v0.1.4/ref-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "6cc5fe0211aaf7af6f18062da34aeaa3c4ddbbff90b2bc1719a50c10a3fc55f3"
    end

    on_intel do
      url "https://github.com/david-fruehwirth/ref/releases/download/v0.1.4/ref-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "afe15318b6b392157ae28b00b40658cbf62454bc3eff6903944b3c04286c240e"
    end
  end

  def install
    bin.install "ref"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ref --version")
  end
end
