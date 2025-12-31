class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.2.1"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.1/pilum_v0.2.1_darwin_arm64.tar.gz"
      sha256 "b5573cd2a9cae05965841872c186f4c874cdd6465c13161cf7cd6099c89fb513"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.1/pilum_v0.2.1_darwin_amd64.tar.gz"
      sha256 "f906b06169b8afdd74ed905dfea6ffd52c792170bf84526cb73a8606732f61a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.1/pilum_v0.2.1_linux_arm64.tar.gz"
      sha256 "241d2f7e24889764f122adba925169ed3beb47f36fe5b5a758cdecefcc155423"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.1/pilum_v0.2.1_linux_amd64.tar.gz"
      sha256 "2d9378ae62f5fc0dae8630b293f361be97d56c6dcb9ec18fd424ffad2ef76ad0"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
