class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.10/pilum_v0.7.10_darwin_arm64.tar.gz"
      sha256 "408e03df008faf6abc0e1f6237176980494e3cb9e9faee466150582879e82d8f"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.10/pilum_v0.7.10_darwin_amd64.tar.gz"
      sha256 "081739675eb76fa7e35c4ff1bb7e10fc4ffe3d8874eaa6e41c064553c3c27bf9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.10/pilum_v0.7.10_linux_arm64.tar.gz"
      sha256 "57e7da94628ec8945415c3c77a574392fba06a4ded67ff174aaa1559d493a97c"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.10/pilum_v0.7.10_linux_amd64.tar.gz"
      sha256 "1d026a34bc495e552b9be7e9fdec0610da69939e53670a34fa1b4eea22dbf578"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
