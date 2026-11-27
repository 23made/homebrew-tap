# Written by 23artifacts' release workflow for each release of 23a; edits here are overwritten.
class Ttartifacts < Formula
  desc "Publish to 23artifacts from a terminal"
  homepage "https://23artifacts.com/docs"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.5.0/23a-darwin-arm64.tar.gz"
      sha256 "326d13cfce1078c50e5aadb43340f4e1dee14e02451108c4933c53dceaa4345e"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.5.0/23a-darwin-x64.tar.gz"
      sha256 "2e28adb7311d01f943f6dbc38bf9ea8c277f6f33484de8dcc6ba41446b0317b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.5.0/23a-linux-arm64.tar.gz"
      sha256 "7c26c116c07a8a7fd2ac0b46d75925f112644f055773d20d80ae8572703a3541"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.5.0/23a-linux-x64.tar.gz"
      sha256 "dabdc814066bab709f895e270d369977b928f039ca706898312ad9868ee87709"
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
