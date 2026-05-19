class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.1/pilum_v0.7.1_darwin_arm64.tar.gz"
      sha256 "80e935c1defa3844b29c298e7609e3cd51624c04138460ff015c7db266ac5082"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.1/pilum_v0.7.1_darwin_amd64.tar.gz"
      sha256 "fcaaede7ca9d3ea50d140b5a1a775e7f0e4f752a5e57cf5d28b55987addc424f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.1/pilum_v0.7.1_linux_arm64.tar.gz"
      sha256 "2cf9ce6848660c1de5f1f190ecfaccffce0518a074c72419ce635f75fab03b73"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.1/pilum_v0.7.1_linux_amd64.tar.gz"
      sha256 "c9cedd4e1cbea22379780410a80e801694b107a49f153459fa04578624ed6042"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
