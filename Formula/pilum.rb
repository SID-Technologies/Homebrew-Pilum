class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.5.7"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.7/pilum_v0.5.7_darwin_arm64.tar.gz"
      sha256 "b60dda8af411f92f2884611fad3f32a7a6a5ff67984b4e4c1e7f6be83d86f38e"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.7/pilum_v0.5.7_darwin_amd64.tar.gz"
      sha256 "2c5d019a714e14b4ca8f09d2969740227f84f4a4a208c98e65eab151cb124134"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.7/pilum_v0.5.7_linux_arm64.tar.gz"
      sha256 "fbc2b0b100594fb2bcd2af16ac2385f879e92848fb8a836e1b73d3aea9aaa002"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.7/pilum_v0.5.7_linux_amd64.tar.gz"
      sha256 "0914e8c0a0792747f516251ced8fba8342146d1da40fae17106c33b056ea2916"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
