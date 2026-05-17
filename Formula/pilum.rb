class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.0/pilum_v0.7.0_darwin_arm64.tar.gz"
      sha256 "be287a2f970834d4d5e657fade5ee47f47eca0d2123ca13cd77643beba53ca7b"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.0/pilum_v0.7.0_darwin_amd64.tar.gz"
      sha256 "d77ac77a5bc6efd088db1b1b0cc91cf2afd041384aa6efcdbcb61e1bed5a35ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.0/pilum_v0.7.0_linux_arm64.tar.gz"
      sha256 "a1402048dc55e4f35d2ad5c927ac976302f278f872f458e6a85b5192d4ddeba9"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.0/pilum_v0.7.0_linux_amd64.tar.gz"
      sha256 "02627a5569342a1d710a725933ca02118a2a5963045a4b6bf275e1a351ed9df5"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
