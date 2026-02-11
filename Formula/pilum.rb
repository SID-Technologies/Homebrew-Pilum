class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.4.3"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.3/pilum_v0.4.3_darwin_arm64.tar.gz"
      sha256 "954ebf437a4e11e014b27fe39d31199c2830519cf29b1e5ea890984157c52c56"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.3/pilum_v0.4.3_darwin_amd64.tar.gz"
      sha256 "0cec07e63718d1ee9fb4779099715bdba1c63676f9a6be026abd065c6b9a1281"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.3/pilum_v0.4.3_linux_arm64.tar.gz"
      sha256 "de3d95750939a7d5e1782bf51d90d37bb80656e14a3cbc9d6c6c3eaed8154604"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.3/pilum_v0.4.3_linux_amd64.tar.gz"
      sha256 "97e04b101228e1a3b595fd893ad4ea57319474301b4b4b9a235896c1e9be8f03"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
