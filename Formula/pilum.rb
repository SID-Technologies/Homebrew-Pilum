class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.10.0/pilum_v0.10.0_darwin_arm64.tar.gz"
      sha256 "67778cee8fb3093ef1ea1f49d1dcdaaacf6991a021aa905e9a0830d69912d37c"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.10.0/pilum_v0.10.0_darwin_amd64.tar.gz"
      sha256 "d785d6ad1eb75b34d6013f7176310b23749bd4221c22e509c35219090f527d01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.10.0/pilum_v0.10.0_linux_arm64.tar.gz"
      sha256 "280b359c250eff0cd2cf3d84fc67ebdf647040b970b8749dd71e775f57766f9d"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.10.0/pilum_v0.10.0_linux_amd64.tar.gz"
      sha256 "c98394a5d6af62d5254634dade2352e39ba67ac42e68f4bfafa3dfff6bef8767"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
