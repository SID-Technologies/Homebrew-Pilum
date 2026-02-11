class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.4.2"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.2/pilum_v0.4.2_darwin_arm64.tar.gz"
      sha256 "8b89780287b010c8beabf3dfaecb8e3c5579588e0b4e3f095d140255f98a30f2"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.2/pilum_v0.4.2_darwin_amd64.tar.gz"
      sha256 "6fcbe484f927d6481702a74cda2d91eeef2b63755f5eefb28d660a55bc17b494"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.2/pilum_v0.4.2_linux_arm64.tar.gz"
      sha256 "c13e0994c8bf2751ed0a331893f55f2c33f675e782aadf24d0ab4821f47d8723"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.2/pilum_v0.4.2_linux_amd64.tar.gz"
      sha256 "97e639f633450fb2e5b8017110fa0c0c30207c1e20d1b7ebe41bcc220f5a26e0"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
