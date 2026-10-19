class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.10.1/pilum_v0.10.1_darwin_arm64.tar.gz"
      sha256 "46d578cce854afd9327d02ffd19cc209aa0965de7bc11fb8bfab6fee0928d71d"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.10.1/pilum_v0.10.1_darwin_amd64.tar.gz"
      sha256 "506c6127d3a75f99ce0fef5548d2293be3b5f7a86f5a0cdc35e27cdc0916a644"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.10.1/pilum_v0.10.1_linux_arm64.tar.gz"
      sha256 "7d597815e4b3c450ac8fe5ec7ec0b2f062a2e65357d9bacb813c2580c5496b1c"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.10.1/pilum_v0.10.1_linux_amd64.tar.gz"
      sha256 "9391bf06b56a3fbff163a90c3ac2cc010bbb57d970877e0a85dc32ba59769aed"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
