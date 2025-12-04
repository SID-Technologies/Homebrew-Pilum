class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.1.2"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.1.2/pilum_v0.1.2_darwin_arm64.tar.gz"
      sha256 "e15565115ecb92d2b4491d9d17816f32aad77968c1896ff41de13394bc65ce96"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.1.2/pilum_v0.1.2_darwin_amd64.tar.gz"
      sha256 "62e4876852343411e5c3bfa19239e56b3325d2f12106422702a94e7df1924c20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.1.2/pilum_v0.1.2_linux_arm64.tar.gz"
      sha256 "eb500da18fdc9505f7017df7bfff0c4b8616dc0c38a204a5139d8985cce72405"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.1.2/pilum_v0.1.2_linux_amd64.tar.gz"
      sha256 "fda4930075a870fd28018b45b0cd9e87016e8aaadadd40850128f24770e2bf97"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
