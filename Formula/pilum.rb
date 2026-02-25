class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.5.1"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.1/pilum_v0.5.1_darwin_arm64.tar.gz"
      sha256 "a4e150e87f48dc928a5b11e618143c759d6983c9981862fb83f0a455ec0eb326"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.1/pilum_v0.5.1_darwin_amd64.tar.gz"
      sha256 "08c14c32851d324e8133dd1dbfa2d94e343c9c54c79d4e8941391856265198a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.1/pilum_v0.5.1_linux_arm64.tar.gz"
      sha256 "78d9b8c20544fce8827dd473d64e1c720ffb810a3b53f3381422a7a555488109"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.1/pilum_v0.5.1_linux_amd64.tar.gz"
      sha256 "d2898e801fc9168c174e2b6fcd00d1eec1572c4751eda7fa9b122b18551b63ff"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
