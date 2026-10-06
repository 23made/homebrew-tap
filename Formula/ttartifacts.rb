# Written by 23artifacts' release workflow for each release of 23a; edits here are overwritten.
class Ttartifacts < Formula
  desc "Publish to 23artifacts from a terminal"
  homepage "https://23artifacts.com/docs"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.0/23a-darwin-arm64.tar.gz"
      sha256 "7ca4e147419cc07c94cb79fbc736be2ecb42b1bbeb4ba1398867f92c22e89a6c"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.0/23a-darwin-x64.tar.gz"
      sha256 "ab8ea949653d8367082d605076df67faa83eb7e7e61862a47d372e670a41a172"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.0/23a-linux-arm64.tar.gz"
      sha256 "c0f2ca10164a38a124d2ff44a06cc224eb744706ac00e99abff2eb5b1ac398f0"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.0/23a-linux-x64.tar.gz"
      sha256 "aaae043553105e143612557f3f4989498a5fd9faba2168b226ba1708838b898e"
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
