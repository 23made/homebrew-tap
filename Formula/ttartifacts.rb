# Written by 23artifacts' release workflow for each release of 23a; edits here are overwritten.
class Ttartifacts < Formula
  desc "Publish to 23artifacts from a terminal"
  homepage "https://23artifacts.com/docs"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.4.0/23a-darwin-arm64.tar.gz"
      sha256 "63358af1fb89447b2a44c4e39a2c5f5eae5a9b562b9d5275355b0f7cc969d471"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.4.0/23a-darwin-x64.tar.gz"
      sha256 "c0c22d7fb46592122238f9b601a1e8527ed3e86d0c316393c1676dca40b53992"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.4.0/23a-linux-arm64.tar.gz"
      sha256 "bbd825410a56bca8a026e26d0498f2e30af46b60e4b1888b33ad98cdc28b3a56"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.4.0/23a-linux-x64.tar.gz"
      sha256 "a30bd86a35a2214c0a218577dd4a5ad9444eca7cc4f7906277aef9f3c3d1b00b"
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
