class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.7/pilum_v0.7.7_darwin_arm64.tar.gz"
      sha256 "1a339fe8d84d73d07ba261e1319d6c1bdb625a669de9685d75ba38aada75db7b"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.7/pilum_v0.7.7_darwin_amd64.tar.gz"
      sha256 "e979bc494e438c45882a49fddedc62ecd7ef2d104e231a9b16a28b9f88bede62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.7/pilum_v0.7.7_linux_arm64.tar.gz"
      sha256 "9818f5edcb271582d92b350b6d85030ab918c48e13026fe41744607bbe581864"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.7/pilum_v0.7.7_linux_amd64.tar.gz"
      sha256 "b23b512c75fbb69c92e5e0582f7eb1ea36d267c2c6e8de32d7607d0708476445"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
