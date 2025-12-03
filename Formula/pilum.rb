class Pilum < Formula
  desc "Multi-service deployment orchestrator"
  homepage "https://github.com/SID-Technologies/pilum"
  version "v0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/vv0.1.0/pilum_v0.1.0_darwin_arm64.tar.gz"
      sha256 "b813873180b6447d11369770c3fa42c70f3bf284c90a7716baadec998408bbbf"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/vv0.1.0/pilum_v0.1.0_darwin_amd64.tar.gz"
      sha256 "1ba3e8de17685b586a72a52afcf1ff3692a3bccece1f0840c6b834f4ddb6c4dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/vv0.1.0/pilum_v0.1.0_linux_arm64.tar.gz"
      sha256 "ff91e8332cd033cad2a4ee7fa59dbd1cb9561c659f1525093e5204d5aa6e95ed"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/vv0.1.0/pilum_v0.1.0_linux_amd64.tar.gz"
      sha256 "bad6b75d0de9daf857350fc1bcc41c2ab0d42cc35156ea4fad8a5ac1d7aef649"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--help"
  end
end
