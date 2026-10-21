# Written by 23artifacts' release workflow for each release of 23a; edits here are overwritten.
class Ttartifacts < Formula
  desc "Publish to 23artifacts from a terminal"
  homepage "https://23artifacts.com/docs"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.2/23a-darwin-arm64.tar.gz"
      sha256 "307fde87a730209f657479c50122f42a0ec630e83e5ab181781345e13d35178b"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.2/23a-darwin-x64.tar.gz"
      sha256 "e79ad420ef0f9265aaaf38586d73aab2208a7f32c17e2f334400cdadccab6f9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.2/23a-linux-arm64.tar.gz"
      sha256 "7e4e8d770439176441a4268409166f377bf9f75ab42576495a062bcb2960a6bb"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.2/23a-linux-x64.tar.gz"
      sha256 "ebda460ae4ef6c386ef330b1810dec0bec11aca843cffda8b40d4c45c0accaa7"
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
