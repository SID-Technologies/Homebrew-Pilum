class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.11/pilum_v0.7.11_darwin_arm64.tar.gz"
      sha256 "2602cc39b682be37e739733fd26c44ab9bfa6c2e8a935c4e6b77c9c8382b8a2a"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.11/pilum_v0.7.11_darwin_amd64.tar.gz"
      sha256 "2653131f06067b88b851c8d54245c5b2203e6719b8748886a7e149ea7ee83d94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.11/pilum_v0.7.11_linux_arm64.tar.gz"
      sha256 "ea36fe2a7e75dbc1ff932861e97db223574eb05755d1e0c6bf6e5ab830130238"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.11/pilum_v0.7.11_linux_amd64.tar.gz"
      sha256 "0694928e4186cf2b7e04f13984275fc210225a207506694e13bc470bb011a125"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
