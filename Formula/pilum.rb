class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.4/pilum_v0.7.4_darwin_arm64.tar.gz"
      sha256 "8f5204e013239416204bb18b2f3b862a54269af571614782ce2e145cfa7a9721"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.4/pilum_v0.7.4_darwin_amd64.tar.gz"
      sha256 "156aa77f3f19a7cb4e48a58c90a5fca47895ed6738c8a685f963ff9da67027b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.4/pilum_v0.7.4_linux_arm64.tar.gz"
      sha256 "e395d71e9393d800d20814903477f6ba0c1960855c36f4a71dc2aef5b9c16a9e"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.4/pilum_v0.7.4_linux_amd64.tar.gz"
      sha256 "ffab165273a6fcbd33c4e81635539b6e83fd781976a596fca41137d456a1d92a"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
