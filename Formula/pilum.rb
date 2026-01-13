class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.3.1"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.3.1/pilum_v0.3.1_darwin_arm64.tar.gz"
      sha256 "ea94cc17fcd49740f9ee1ae147980581d6c1a7e9cdbe5cbe3c48968d3d64b42f"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.3.1/pilum_v0.3.1_darwin_amd64.tar.gz"
      sha256 "555c8e66346ab1e3f878e0829adcfdd6d19c5b34232ab7ca51fb3b92a0f85e11"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.3.1/pilum_v0.3.1_linux_arm64.tar.gz"
      sha256 "4e97f15aca3ab55f6bb7d4acb27894b469e56956dd974a1b4b70656e1fa8479b"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.3.1/pilum_v0.3.1_linux_amd64.tar.gz"
      sha256 "51db21be162d0563bfb57e86fb753e71b7bcf744bb51c26c4a3979aa58209172"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
