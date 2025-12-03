class Pilum < Formula
  desc "Multi-service deployment orchestrator"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.1.1/pilum_0.1.1_darwin_arm64.tar.gz"
      sha256 "8373bae0504f66dc4fa20c72371d10323bde8b5225caeeea9f55b04b89f8ee2d"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.1.1/pilum_0.1.1_darwin_amd64.tar.gz"
      sha256 "6f22ba6b7c254e9af8dd866a60c8421299d2cea19a29103deb0682cf0a6a1923"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.1.1/pilum_0.1.1_linux_arm64.tar.gz"
      sha256 "86289c510c82e9b6a0d80dcf3e99c2aa3be5bc342127729f547686763605b709"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.1.1/pilum_0.1.1_linux_amd64.tar.gz"
      sha256 "952fe04c0257924e85483a8a44e73dd44e28474eedf515556685fe9c48627e15"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--help"
  end
end
