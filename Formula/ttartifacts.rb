# Written by 23artifacts' release workflow for each release of 23a; edits here are overwritten.
class Ttartifacts < Formula
  desc "Publish to 23artifacts from a terminal"
  homepage "https://23artifacts.com/docs"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.4/23a-darwin-arm64.tar.gz"
      sha256 "8641da1f0572fb6214fe41fe2ca0216404bd1b729c301049c5d1b33019f5c11b"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.4/23a-darwin-x64.tar.gz"
      sha256 "7190253a66674589ba913b7aa9898915d885d7aefa876d4602634971e0a7adc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.4/23a-linux-arm64.tar.gz"
      sha256 "f78d6e6909a79a831bd8ab1397c4144406e6c04174baa81b9eabcf86a5db57d3"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.4/23a-linux-x64.tar.gz"
      sha256 "b7084d10667a1922c0185d3794ca6825b6367ab18da213cb1de3188a9475afeb"
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
