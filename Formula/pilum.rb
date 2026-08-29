class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.9/pilum_v0.7.9_darwin_arm64.tar.gz"
      sha256 "e04b20cc521f6824eb553e63916f74d0cbfe77ca6d1ddf11b9757530c789d52c"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.9/pilum_v0.7.9_darwin_amd64.tar.gz"
      sha256 "4f00bf7e02dc65de7e94c14ed3ec7ea674b96fcef3c328f74371601800e48458"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.9/pilum_v0.7.9_linux_arm64.tar.gz"
      sha256 "a11e298c00e571350d3373ea23531df064575ee9ed6d390143b45bf272d51166"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.9/pilum_v0.7.9_linux_amd64.tar.gz"
      sha256 "359dfeee983c7f4d142c57b3bf2cf4088898f03961e0148a1191d8642d30c7a7"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
