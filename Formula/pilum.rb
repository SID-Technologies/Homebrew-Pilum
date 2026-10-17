class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.9.0/pilum_v0.9.0_darwin_arm64.tar.gz"
      sha256 "15c7cdb2bfaa101d77422bca823214bd801df0afadf8440985671f806473dab9"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.9.0/pilum_v0.9.0_darwin_amd64.tar.gz"
      sha256 "e3c54b77350db0b84ea4982be1dc89eb27917cff1b9dfd223bf92144a48353eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.9.0/pilum_v0.9.0_linux_arm64.tar.gz"
      sha256 "e301725039cddd395a9d3fdf610197cd3e0649372c0fc2def930069ba542d7ca"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.9.0/pilum_v0.9.0_linux_amd64.tar.gz"
      sha256 "26cbe013bc6cae8c74cbf24190ed0df998c30bf9359d8b0b88301c7373186200"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
