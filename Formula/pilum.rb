class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.4.4"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.4/pilum_v0.4.4_darwin_arm64.tar.gz"
      sha256 "5985bb7c325747febe95ef807afa4c5eab08279d213a18bf8e19b832b49b1336"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.4/pilum_v0.4.4_darwin_amd64.tar.gz"
      sha256 "2fcadde902e860fea5d2bad26ae11107850f439066f80238662d08d18723608c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.4/pilum_v0.4.4_linux_arm64.tar.gz"
      sha256 "d0cf223c725a4935d943ab733dde665b5c5ee1f5f748c27165ba6927613f3619"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.4/pilum_v0.4.4_linux_amd64.tar.gz"
      sha256 "9c4ef61d434afdf471acbcd2a9b7febea84c713ff0ddf86ef22a7380138e2b3b"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
