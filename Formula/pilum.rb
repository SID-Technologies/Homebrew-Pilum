class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.5.3"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.3/pilum_v0.5.3_darwin_arm64.tar.gz"
      sha256 "ad712e0c618ded556879583ed97a7826e298d9ca540e5466a105c594d7d9c7b7"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.3/pilum_v0.5.3_darwin_amd64.tar.gz"
      sha256 "fdcea628cf6f63d91fabd569a2fe4a86a91c00d8c45c895223de6e6935eadc5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.3/pilum_v0.5.3_linux_arm64.tar.gz"
      sha256 "d42d52a0d12ceb9b7471c5eef66a878263eabf48c927d236d2ce5cc623e32a7f"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.3/pilum_v0.5.3_linux_amd64.tar.gz"
      sha256 "1c5d06e422b1dbf4f5252e083e0b473b3b3e1e280ca87e7381b92ec1976a5690"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
