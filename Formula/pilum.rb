class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.4.0"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.0/pilum_v0.4.0_darwin_arm64.tar.gz"
      sha256 "d3caa77b33f32680df8730349f1e7e34e06475b668e860a4a903c2b615a03b85"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.0/pilum_v0.4.0_darwin_amd64.tar.gz"
      sha256 "4e40e401b050b565aa8adc1a5972943d92f4eafde2b01d4214121b0787ddc10d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.0/pilum_v0.4.0_linux_arm64.tar.gz"
      sha256 "2978be3b9c829e5892fbd0bfc97c95db39bfc3d86f89ccb20e74542d60c76adf"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.0/pilum_v0.4.0_linux_amd64.tar.gz"
      sha256 "1d5a5748e0264f21ae1cfe3c82a787463028a208a74d13afda0d0a1de875c676"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
