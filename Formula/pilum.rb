class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.4.6"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.6/pilum_v0.4.6_darwin_arm64.tar.gz"
      sha256 "a9e89c0262750ff133c35e55d6e51d9d40287cdd89122fe6277a937a65c25ff2"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.6/pilum_v0.4.6_darwin_amd64.tar.gz"
      sha256 "efe43a61883475cffb63126532cc3da36c708a900e5d2f09fd8827cd8a50dfe2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.6/pilum_v0.4.6_linux_arm64.tar.gz"
      sha256 "2b310a0422b8cfa1469e96915500b95cf5fe8e79f370d1577d4ba1dc65a73cf9"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.4.6/pilum_v0.4.6_linux_amd64.tar.gz"
      sha256 "c5c393d5372e0b4449278001cb1821b188ee9f125c8a15d5509c5b3a4de27fdf"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
