class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.3.0"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.3.0/pilum_v0.3.0_darwin_arm64.tar.gz"
      sha256 "e89a577bd28402086c56c11fb3f3e8686a89e09f4a9122b9cecdba738412ea4d"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.3.0/pilum_v0.3.0_darwin_amd64.tar.gz"
      sha256 "13b92d8017eb6e5b18b0a4c444e5fe3168610c3364bc18fc36671df97d8a9e1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.3.0/pilum_v0.3.0_linux_arm64.tar.gz"
      sha256 "2b011e8eb3b7ad409104c8346a0a9adc5a68b2722638c5dd7fd2b8422bfb8974"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.3.0/pilum_v0.3.0_linux_amd64.tar.gz"
      sha256 "848c38bd415e1521614965c3882a2a3837836ae6a70e0070a1f4a9cadd6d216a"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
