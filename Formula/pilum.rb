class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.6/pilum_v0.7.6_darwin_arm64.tar.gz"
      sha256 "8bafcf6da35882cffe26c19dca91e260bc1db7bf8b13ad868579f1722930a564"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.6/pilum_v0.7.6_darwin_amd64.tar.gz"
      sha256 "d5415ea05df43ce065ab2c91814de9578df914157783b6f2a42b510c005a5e79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.6/pilum_v0.7.6_linux_arm64.tar.gz"
      sha256 "904d7b54b37a27418f58c0d644e9a0cec5d56b60669aa2bcf772a73d1c1ab907"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.6/pilum_v0.7.6_linux_amd64.tar.gz"
      sha256 "b6261d509ea0cc0dca1e966b7f8f1954d08e6727a7fcf5423917da8637032d6e"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
