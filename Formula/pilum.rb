class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.4.5"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.5/pilum_v0.4.5_darwin_arm64.tar.gz"
      sha256 "2ffbf7fef30876af3c44fc533e895b621f1fd0a494e9a0093e4a021d7f8da0a0"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.5/pilum_v0.4.5_darwin_amd64.tar.gz"
      sha256 "1cbca6acc13999f170e4c19ca9aa632c1be49d6df990b86eeb2f02e2007a8957"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.5/pilum_v0.4.5_linux_arm64.tar.gz"
      sha256 "ce0a4936e7ea359af5e31d0d3ce983d51e3386d3eeb3489d5664b298a28a490c"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.5/pilum_v0.4.5_linux_amd64.tar.gz"
      sha256 "6eac368df19fc97c3f60d158e9d1544f7586be44fca52dec341c4e0b318c067b"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
