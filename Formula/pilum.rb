class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.5.4"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.4/pilum_v0.5.4_darwin_arm64.tar.gz"
      sha256 "a90964c812d1621e5236e85ebf8eb308c5ef32f7efebb2faeaf14e2b07f45728"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.4/pilum_v0.5.4_darwin_amd64.tar.gz"
      sha256 "ba96674fa9fe2c5353733348f477a6e75e4b7b703b7eb75dc6c8bc3b7fb5ed44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.4/pilum_v0.5.4_linux_arm64.tar.gz"
      sha256 "a8fc59e573f4347db173217853f32afc6d0f457579a09eec200aeb5031e2ffcd"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.5.4/pilum_v0.5.4_linux_amd64.tar.gz"
      sha256 "e1792af492ae806b5f5e4a06759739ffce413a3211f55af3b94aa20e2c14e29b"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
