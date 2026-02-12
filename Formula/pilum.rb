class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.4.7"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.7/pilum_v0.4.7_darwin_arm64.tar.gz"
      sha256 "8fba05094150b4c101711a98d301d8a85735c9a680c3f1bdd8f863a6dc91524a"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.7/pilum_v0.4.7_darwin_amd64.tar.gz"
      sha256 "fc99540a7157ec1141fde29a299ef806bf643202d22a540313749866fa3b2edd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.7/pilum_v0.4.7_linux_arm64.tar.gz"
      sha256 "f7a2fba5bcdcec5a6c7db51766ca199aae54874ef31cc7175be9637540846f0f"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.7/pilum_v0.4.7_linux_amd64.tar.gz"
      sha256 "2ae38ba48cdfe5e3f5fd96b4adebca40136384f9f2f6529200227a9e4f94c4da"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
