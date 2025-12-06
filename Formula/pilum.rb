class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.1.3"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.1.3/pilum_v0.1.3_darwin_arm64.tar.gz"
      sha256 "5df5dbe5a27cebcabcd3c6b7f441f043abecadac015567f4fc21aedb883f2915"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.1.3/pilum_v0.1.3_darwin_amd64.tar.gz"
      sha256 "9163abdf7d158d8f8191b4b7b83d3b03cb447f6f979ad4281378131673c8ceab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.1.3/pilum_v0.1.3_linux_arm64.tar.gz"
      sha256 "45d05e8f31453ae4d54cfb350cbf487770b79228ead8c0a238783171944484b4"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.1.3/pilum_v0.1.3_linux_amd64.tar.gz"
      sha256 "a6ff7e0232c999c7768b3ddbca614402bd4febf078d917dfe6d1b8f6508b9c28"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
