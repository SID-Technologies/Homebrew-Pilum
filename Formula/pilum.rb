class Pilum < Formula
  desc "Multi-cloud deployment CLI - define once, deploy anywhere"
  homepage "https://github.com/SID-Technologies/pilum"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.1/pilum_v0.6.1_darwin_arm64.tar.gz"
      sha256 "491e3d04748f18e5faa1efc455630722ad4c68084a3786ff6cc25a8b4a4a6117"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.1/pilum_v0.6.1_darwin_amd64.tar.gz"
      sha256 "751b9b768d5d63a4e1b4d6dd2c04846507ce3fa0167134ba6219075184f69d43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.1/pilum_v0.6.1_linux_arm64.tar.gz"
      sha256 "e6b4815478aa9362975b6450a23aa93027246dd0370015742f8a49ffb82ae1ca"
    else
      url "https://github.com/SID-Technologies/pilum/releases/download/v0.6.1/pilum_v0.6.1_linux_amd64.tar.gz"
      sha256 "c53375749b2a69bcc5b33a1b358ecd4b01c2a6a3a74634dfe9e03c6f36008e27"
    end
  end

  def install
    bin.install Dir["pilum_*"].first => "pilum"
  end

  test do
    system "#{bin}/pilum", "--version"
  end
end
