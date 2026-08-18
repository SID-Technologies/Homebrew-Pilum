class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.8/pilum_v0.7.8_darwin_arm64.tar.gz"
      sha256 "8d1321fe69240ca3392a4631bc58cb952ce95ebcd8bc8f89f85f8907895e7330"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.8/pilum_v0.7.8_darwin_amd64.tar.gz"
      sha256 "1dbe79a015859acbe63b14a6abf3fb32db11c974d262df4fde3254bca0eb59c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.8/pilum_v0.7.8_linux_arm64.tar.gz"
      sha256 "2fab135cf9c3f65348f95ccd80cecdc007a417d1a76735d4b0293bff60e0dc72"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.8/pilum_v0.7.8_linux_amd64.tar.gz"
      sha256 "e397c3b120a42f88542588a55e755fba37e74ad3158580b7381551982b65d553"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
