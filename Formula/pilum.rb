class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.2/pilum_v0.7.2_darwin_arm64.tar.gz"
      sha256 "cf73d16b5005d16b788ef7c54074c349f81da5c22c909a2294039fe8d4b54e22"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.2/pilum_v0.7.2_darwin_amd64.tar.gz"
      sha256 "0f3f61b674809ba76e6d891131ddcd1fef070711cff6933fcb194b5cf7898003"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.2/pilum_v0.7.2_linux_arm64.tar.gz"
      sha256 "74b1f19d87a34ec18faf0d827da0fcec92e46ace49bb9bdad7c4625ebbfd0b66"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.2/pilum_v0.7.2_linux_amd64.tar.gz"
      sha256 "d82cd6c16c52f9638490248ec32a3d49646f7427214e2b79899d830edd0b752d"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
