class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.2.2"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.2/pilum_v0.2.2_darwin_arm64.tar.gz"
      sha256 "7014548e4483739409ec2af6466a7f0b12bd35e136e1514dd61b64c0ccb1a511"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.2/pilum_v0.2.2_darwin_amd64.tar.gz"
      sha256 "37f526747c14a15426f02e16e1a78980e3fcb0eda3845b464a2fd0ff7a9d76d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.2/pilum_v0.2.2_linux_arm64.tar.gz"
      sha256 "0122be28705d439d7ad6a3ef0e6b411d5fa8a0dc8124fee87dbb7d9f7292a174"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.2/pilum_v0.2.2_linux_amd64.tar.gz"
      sha256 "9740f8d658db2a957cf5caac6209555786c567869f045b33d7fa0212f89f18da"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
