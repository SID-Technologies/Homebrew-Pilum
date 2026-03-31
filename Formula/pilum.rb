class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.5.6"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.6/pilum_v0.5.6_darwin_arm64.tar.gz"
      sha256 "4334265ab0cf9da3f7466c4f680496e93acb149a2ac6b65e93249e9f759ec9de"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.6/pilum_v0.5.6_darwin_amd64.tar.gz"
      sha256 "5eaa901a4cf804e3afe29bc69541fdc9f81120cf2c88a7b5c47c18c9d101810f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.6/pilum_v0.5.6_linux_arm64.tar.gz"
      sha256 "f7139773b8b7a22e8c7c086cad201e4c1a479798a9da50b205f0ca596faa9b42"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.6/pilum_v0.5.6_linux_amd64.tar.gz"
      sha256 "7462919a371077bdf6181168ab6776359c76b30e9bc6631b4e6acceba7f5993a"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
