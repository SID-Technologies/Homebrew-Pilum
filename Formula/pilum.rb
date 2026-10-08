class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.15/pilum_v0.7.15_darwin_arm64.tar.gz"
      sha256 "8b213189159164d6ef683330fbe01816f2e7d81b01670049c40a5dd708dcd144"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.15/pilum_v0.7.15_darwin_amd64.tar.gz"
      sha256 "08573ba7900057c510ab9913ccf4b51be379e8b0526be46f2a94c3a404e57b9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.15/pilum_v0.7.15_linux_arm64.tar.gz"
      sha256 "281c698931bb71f72497ee67cee3356f7e672ec17139aa668fc3e5246896d74b"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.15/pilum_v0.7.15_linux_amd64.tar.gz"
      sha256 "8ba3edde702ee68c3f86e28e79f9cdff42a172d23025890227a9c91d93423124"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
