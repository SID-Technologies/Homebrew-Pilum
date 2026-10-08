class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.8.0/pilum_v0.8.0_darwin_arm64.tar.gz"
      sha256 "fc81f6b4f8052c1d5bbf588e7ca00f5e5a8f33da53e2ca5fd7793116fb7bb481"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.8.0/pilum_v0.8.0_darwin_amd64.tar.gz"
      sha256 "3baad38a7c39411ddeb676e5bb504a7750fe042fc92d88c4ad1a65d185947019"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.8.0/pilum_v0.8.0_linux_arm64.tar.gz"
      sha256 "0d2e4ccad8ffcf0c550d9a2557a3f8d5e3476366bf88ced00df27a90d4df4e78"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.8.0/pilum_v0.8.0_linux_amd64.tar.gz"
      sha256 "74506a97d3a4595a2fbbd35e1399ff543ce7130f9dc36e4cc937ed9e92c75011"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
