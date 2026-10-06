# Written by 23artifacts' release workflow for each release of 23a; edits here are overwritten.
class Ttartifacts < Formula
  desc "Publish to 23artifacts from a terminal"
  homepage "https://23artifacts.com/docs"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.1/23a-darwin-arm64.tar.gz"
      sha256 "d44d01cbb8f16b783842fa3f518ecbae5a4cf61e059fe7fcd1c91b93fce17244"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.1/23a-darwin-x64.tar.gz"
      sha256 "4073952e6d5d439c3885af3b3ba01d6a2119b9c48fc6c4bc91bc26691f010351"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.1/23a-linux-arm64.tar.gz"
      sha256 "70bec26dad8ab053e569263d0062c8b97859bfd4a2a6741a96e14f0039292eed"
    end
    on_intel do
      url "https://github.com/23made/homebrew-tap/releases/download/23artifacts-0.2.1/23a-linux-x64.tar.gz"
      sha256 "8fe4e62329460da67172dda19504d9653abff83d930ecd460291cb60efb88425"
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
