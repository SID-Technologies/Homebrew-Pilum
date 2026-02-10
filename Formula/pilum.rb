class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.4.1"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.1/pilum_v0.4.1_darwin_arm64.tar.gz"
      sha256 "e2b14c6d725c221e872ea8a39d0bd32d2c780c5cbe074e42bb04b2796366e5bb"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.1/pilum_v0.4.1_darwin_amd64.tar.gz"
      sha256 "eae4c8f1b58bd66118c2985e84038bb8bec703590a5c8d2f18aabed19bedac9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.1/pilum_v0.4.1_linux_arm64.tar.gz"
      sha256 "6bef0631a3e50e0d8f0e09b4d3f267a114c342d8f92aac05abe3e219872af554"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.1/pilum_v0.4.1_linux_amd64.tar.gz"
      sha256 "c4f2fb948dacfbb6660773bccfc349c4d3938db416dd9f8dc9ebef638a9d2234"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
