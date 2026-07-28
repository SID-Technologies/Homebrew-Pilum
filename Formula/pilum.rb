class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.7.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.5/pilum_v0.7.5_darwin_arm64.tar.gz"
      sha256 "48460d15ec88179eb33142e41e64ba7edecb8709863c98b913232973eb21054e"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.5/pilum_v0.7.5_darwin_amd64.tar.gz"
      sha256 "f8fe20d316827c2b589dff50cb4c84dd5aa9b9d4589bddb47c3bc7549af63473"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.5/pilum_v0.7.5_linux_arm64.tar.gz"
      sha256 "ded60c7000579bbcc8376ddb55c06f6c3702de18d6653eef3b1a7e9bc8685285"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.7.5/pilum_v0.7.5_linux_amd64.tar.gz"
      sha256 "6711c9737b0d9b82cafe80e3cdba7dd3b9a3e65c34ef706adb44a2b588786f97"
    end
  end

  def install
    bin.install "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
