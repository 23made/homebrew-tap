# Written by 23artifacts' release workflow for each release of 23a; edits here are overwritten.
class Ttartifacts < Formula
  desc "Publish to 23artifacts from a terminal"
  homepage "https://23artifacts.com/docs"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.3/23a-darwin-arm64.tar.gz"
      sha256 "590c1e682dcf2d632fd3575e709698e9af2ef348011c3904b8d0b28dc5388490"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.3/23a-darwin-x64.tar.gz"
      sha256 "8ae737f28bd7bf7a3a97cf28a1d1da34c16fc95b73e11302bae526bad02db6aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.3/23a-linux-arm64.tar.gz"
      sha256 "d4a166fc3cc41bb2d73ed345cf2e7b3289b6ad5e1c9b6c96a2fb780964a976d5"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.3/23a-linux-x64.tar.gz"
      sha256 "91c91c475719f63d8778ead5e21e61359bbbd9d22069c2b3f3becaf32a093afc"
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
