class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.6.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.3/pilum_v0.6.3_darwin_arm64.tar.gz"
      sha256 "a0ebcc5c101966855b62283f4550040d48055e444e5ca1469fec927657e128a8"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.3/pilum_v0.6.3_darwin_amd64.tar.gz"
      sha256 "5d7d355094c08bac52d9b9588d94f93d886a1fc9715cfb76c1ab987c4c3b5ad9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.3/pilum_v0.6.3_linux_arm64.tar.gz"
      sha256 "0ba4a77202d12e00ea42f69fa30d0e1342d1900573370d6f406f6e4c051ebd74"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.3/pilum_v0.6.3_linux_amd64.tar.gz"
      sha256 "b7e77be4dfd18cf06e3d0032ae7660388982975bbb97f92c7aa108cfa9fbde8f"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
