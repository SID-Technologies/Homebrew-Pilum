class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.6.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.5/pilum_v0.6.5_darwin_arm64.tar.gz"
      sha256 "5a4e4606bd11e373fd62ef1b2ecce2759153b0175bbdc84b2bfd64ed8a72a89b"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.5/pilum_v0.6.5_darwin_amd64.tar.gz"
      sha256 "c42f25dd8bcc36b362997b3c96447335388fc4ca2d2df6223d8b36b44c156ae5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.5/pilum_v0.6.5_linux_arm64.tar.gz"
      sha256 "a7c49fc632b465f2a72b8e941c8c79bbbcb312107118c0d205b09eeddd9d66fd"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.5/pilum_v0.6.5_linux_amd64.tar.gz"
      sha256 "2a66560db15ceef80f3d82d4a05462e3407befb4db87a80d94325fcfb4d8f6d5"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
