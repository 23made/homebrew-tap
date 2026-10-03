# Written by 23artifacts' release workflow for each release of 23a; edits here are overwritten.
class Ttartifacts < Formula
  desc "Publish to 23artifacts from a terminal"
  homepage "https://23artifacts.com/docs"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.1.1/23a-darwin-arm64.tar.gz"
      sha256 "5898e528095b6944d4b3012cbbeeb9d0661388c4da444af33ba9860cdc401a76"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.1.1/23a-darwin-x64.tar.gz"
      sha256 "5a25e314cf335b463c301f0dfe319c46049e17b4fc49d99788e7be72ecb1720d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.1.1/23a-linux-arm64.tar.gz"
      sha256 "a16bf8baee55df707472e36ba82ccdb56df59753fc35f238d3eac2315c09971c"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.1.1/23a-linux-x64.tar.gz"
      sha256 "66a4c464fe0acd41eafa53c93f31db956fb947d56adcc83965daaa370c2ba525"
    end
  end

  def install
    bin.install "23a"
    bin.install_symlink "23a" => "23artifacts"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/23a --version").strip
    assert_equal version.to_s, shell_output("#{bin}/23artifacts --version").strip
  end
end
