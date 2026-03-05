class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.5.5"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.5/pilum_v0.5.5_darwin_arm64.tar.gz"
      sha256 "9c6950b696282316b852c54db163dbe43462596d95ea14f9d4ec7fad0ffa76cd"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.5/pilum_v0.5.5_darwin_amd64.tar.gz"
      sha256 "d7bf52ce1b497372fc69ba300be5ffa050ae97ac9ec3b489b9680a4cc77e2cfc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.5/pilum_v0.5.5_linux_arm64.tar.gz"
      sha256 "f1593625f17a3109121d33529732db48a168b147a07eb46fc0ea3f500d75a8f8"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.5/pilum_v0.5.5_linux_amd64.tar.gz"
      sha256 "b5e55ca5612129df126e93b3fda90e3bd1bc53c8168b99cf7a86bbb286839c2f"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
