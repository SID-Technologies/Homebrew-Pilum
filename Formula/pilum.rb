class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.5.2"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.2/pilum_v0.5.2_darwin_arm64.tar.gz"
      sha256 "28ff2b6dd5cfba2dafa0f6671a89562119f9ba43ecfe6db541fe57964bfe5f88"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.2/pilum_v0.5.2_darwin_amd64.tar.gz"
      sha256 "17a2c42e680cdc1379bd665209221127c2f34e58c45a0e37cb8919b62fd0bbda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.2/pilum_v0.5.2_linux_arm64.tar.gz"
      sha256 "ec168954dba576369621d35bbd482bd1b30b528d3ccb570ea2dbebccdd3236cc"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.2/pilum_v0.5.2_linux_amd64.tar.gz"
      sha256 "2c0800a11b77d4699281f7c012735255d931c3f30496410d35de887eab5f9124"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
