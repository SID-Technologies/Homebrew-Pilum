class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.6.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.4/pilum_v0.6.4_darwin_arm64.tar.gz"
      sha256 "99ca5142900bfa59bd6ca10684749bf60e6c2e902b5bd1924aeb466cd9802c86"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.4/pilum_v0.6.4_darwin_amd64.tar.gz"
      sha256 "8be2b62b8a214c0dcf8aa4ae5feb36423cfdf0854cc360fdda1c0a943abef258"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.4/pilum_v0.6.4_linux_arm64.tar.gz"
      sha256 "74ff3eedeff1a077c1c8ef52736ed3188c615675eb2ebe9726152472967a9291"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.4/pilum_v0.6.4_linux_amd64.tar.gz"
      sha256 "6fd8b581bda681a45faa425bf638fba7a084200b1bdd6e7a01b772715e927306"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
