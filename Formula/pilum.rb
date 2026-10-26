class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.11.0/pilum_v0.11.0_darwin_arm64.tar.gz"
      sha256 "574faa6238ce2ff3a449fed9a1f85c24a42c54fb513e79b40f8cb711b84f7400"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.11.0/pilum_v0.11.0_darwin_amd64.tar.gz"
      sha256 "487003c5f6e740bcc260b2c7db51880b023ef471e1e95d3cea29e266cd0fec30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.11.0/pilum_v0.11.0_linux_arm64.tar.gz"
      sha256 "ee50ddba77ee427eaf726db6b414ba12dc2f082ba6561daf28eea13286407c1a"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.11.0/pilum_v0.11.0_linux_amd64.tar.gz"
      sha256 "f706ae844d48ac8eb10ffac344f74049fbb21d1f1949a2f6cbd8f8c8a10aa782"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
