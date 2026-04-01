class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.0/pilum_v0.6.0_darwin_arm64.tar.gz"
      sha256 "f22b6317b4d41b02cbe1e340814b4ee0fa7fe4760c69b18bae06daa7002a1307"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.0/pilum_v0.6.0_darwin_amd64.tar.gz"
      sha256 "908bc4e43affa4c16be2e33930de3cafb81625592fbad96c7d6b6b6efd03ed6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.0/pilum_v0.6.0_linux_arm64.tar.gz"
      sha256 "01fda398a19664879bb9179b57955ef9f23cd664fd97d716e2aa7cc570f27899"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.0/pilum_v0.6.0_linux_amd64.tar.gz"
      sha256 "f97dd5ab90e98c794bebb334ac00d83eb9a641d495abe6a94d9b0018d6b8a075"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
