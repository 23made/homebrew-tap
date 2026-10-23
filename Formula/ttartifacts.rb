# Written by 23artifacts' release workflow for each release of 23a; edits here are overwritten.
class Ttartifacts < Formula
  desc "Publish to 23artifacts from a terminal"
  homepage "https://23artifacts.com/docs"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.3.0/23a-darwin-arm64.tar.gz"
      sha256 "e9774117adc0f54a1c78321e3e7127ad32ec0c3ef0da02904a126296bb8ca995"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.3.0/23a-darwin-x64.tar.gz"
      sha256 "ebcdbe87e87d9885d55be3a6cb39e361a1db0bc4717df0c42bb1e03c47d49a0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.3.0/23a-linux-arm64.tar.gz"
      sha256 "c1115bfbcb98bb94d2500a01a911a0ba84820621c5ea53b85c2e0f7248759e6d"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.3.0/23a-linux-x64.tar.gz"
      sha256 "97b86e192885b820f52fcd0ae02a8f75f5c04d645b0795c3df061eaee0454e6e"
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
