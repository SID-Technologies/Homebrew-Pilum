class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.14/pilum_v0.7.14_darwin_arm64.tar.gz"
      sha256 "a3876bad90cfd4481dcb18fc0cc11da4dfa3268d46346701b32c7cf5c1d02780"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.14/pilum_v0.7.14_darwin_amd64.tar.gz"
      sha256 "61204392c722c483f459795e4bfbb70dcfdafadbb6694b5a293fe7692d7c2e6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.14/pilum_v0.7.14_linux_arm64.tar.gz"
      sha256 "f20c47ff9d4cd26a88f827749b0dbbb713e9479c04201e79377ecbf10b421d29"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.14/pilum_v0.7.14_linux_amd64.tar.gz"
      sha256 "d8f255d3f2663bbafbbd8d1e47a088d2cb2c630224c364046795cc467aaf219e"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
