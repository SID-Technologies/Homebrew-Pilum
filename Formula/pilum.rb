class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.3/pilum_v0.7.3_darwin_arm64.tar.gz"
      sha256 "c3ebced12d516884e3e75ed0a5a669fa795c3b738693bad89bc58a8ee8de48a2"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.3/pilum_v0.7.3_darwin_amd64.tar.gz"
      sha256 "7609230030e685114a415c39a9198ca3dee5137617b692a8ce03335a81b882d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.3/pilum_v0.7.3_linux_arm64.tar.gz"
      sha256 "f8ed559c8003038fae9683f13b7174bc77bfa1a2282cd096c0ea00350e3200a7"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.3/pilum_v0.7.3_linux_amd64.tar.gz"
      sha256 "40a09fc5925992bf663741e3e49a842a0d500e4b084e7a178f3a9014d8eecd1d"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
