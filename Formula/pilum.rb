class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.2.3"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.3/pilum_v0.2.3_darwin_arm64.tar.gz"
      sha256 "4d041208ce65c9757cc61146cc67f93942568655f52cb9dfe845107bc98c4a30"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.3/pilum_v0.2.3_darwin_amd64.tar.gz"
      sha256 "b11d52c90d6e5f734e33548fe2d89b2a13cc5d818114d657fc1b19cfac9fa158"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.3/pilum_v0.2.3_linux_arm64.tar.gz"
      sha256 "11132a8e72cc9906d8bd52bd968fc49b55a1ffd1000b57b0739b0025e87e0de5"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.3/pilum_v0.2.3_linux_amd64.tar.gz"
      sha256 "9d47c71da4444da09c3a75b38732fe166c2bc11847574d65d8dcc0bfcfb83800"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
