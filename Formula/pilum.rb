class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.12/pilum_v0.7.12_darwin_arm64.tar.gz"
      sha256 "953f15c3917ad3a6b097c232d26262bdcd8b0eed3fb2be2904006a33e6a10102"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.12/pilum_v0.7.12_darwin_amd64.tar.gz"
      sha256 "aacf564c75e94320dd670d5bba72aa02f441a792035dc548ece1186d1ece6016"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.12/pilum_v0.7.12_linux_arm64.tar.gz"
      sha256 "0f88366970a0c8aecad141614546aa38fb690e03fac161eb64937a9c114bf6ed"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.12/pilum_v0.7.12_linux_amd64.tar.gz"
      sha256 "826f1e7529049040e4989d9b41f58df64c7f0125caa1aca8332affe402fa82f9"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
