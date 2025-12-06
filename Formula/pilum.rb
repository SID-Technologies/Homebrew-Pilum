class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.2.0"
  license "BSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.0/pilum_v0.2.0_darwin_arm64.tar.gz"
      sha256 "b2e959a3eefa830a8cbd0f8b435ec20ced08148962aa6d5598e92403a56a0295"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.0/pilum_v0.2.0_darwin_amd64.tar.gz"
      sha256 "c01cd93f777d1a5813cabf52b4a13766bdd49be62c3ea792df81e488e949352b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.0/pilum_v0.2.0_linux_arm64.tar.gz"
      sha256 "7ebd3d7220751045d983f79016dc5d3648e38e0ba8e8ed1c7c997e1bf9d4dfae"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.2.0/pilum_v0.2.0_linux_amd64.tar.gz"
      sha256 "dbf1f731f33be98cc3db7db945a0983d0fe552c3e95f732fdcafb6cbc7bba4ea"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
