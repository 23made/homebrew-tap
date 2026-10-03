# Written by 23artifacts' release workflow for each release of 23a; edits here are overwritten.
class Ttartifacts < Formula
  desc "Publish to 23artifacts from a terminal"
  homepage "https://23artifacts.com/docs"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.1.0/23a-darwin-arm64.tar.gz"
      sha256 "52231a4facafcdba8a8404f885bda1709eda5992f04c96f80a97671106221d1d"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.1.0/23a-darwin-x64.tar.gz"
      sha256 "16da63375603b931059450db0cde3657ece8b8b429ed72fd994c2525b04aebaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.1.0/23a-linux-arm64.tar.gz"
      sha256 "9fb8744df8bb0f9b445929bbd8311e61b7d3c1c75585998fe92c12d25d11859e"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.1.0/23a-linux-x64.tar.gz"
      sha256 "89573e94b09f3b93c921e84b700b4cee7f005e3832eb971e68ed92b6d0236800"
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
