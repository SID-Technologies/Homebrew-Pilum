class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.2/pilum_v0.6.2_darwin_arm64.tar.gz"
      sha256 "5dc3cfc6a3a5253624e5f0321c88a51880a80f1607d3fcf184a7c394c8bae033"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.2/pilum_v0.6.2_darwin_amd64.tar.gz"
      sha256 "2205b4d6dcbd68be692b12888941d90c5aa739b94163dbbd985497b0614793cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.2/pilum_v0.6.2_linux_arm64.tar.gz"
      sha256 "b23dc0a65e6976171d508100938a288b5b5645c8ea619756c4593f2e1966f098"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.2/pilum_v0.6.2_linux_amd64.tar.gz"
      sha256 "641ff7d32deec6563a5ff7dd37100827f2a115cd0736fbf9961b4786d1d19a54"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
